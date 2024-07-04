import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/admin/approval_reason/reason_for_approval/reason_for_approval_widget.dart';
import '/luxary_homes/admin/block_reason/reason_for_block/reason_for_block_widget.dart';
import '/luxary_homes/admin/reason_for_reject/reason_for_reject_comp/reason_for_reject_comp_widget.dart';
import '/luxary_homes/admin/un_block_reason/reason_for_un_block/reason_for_un_block_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/host_information/host_information/host_information_widget.dart';
import '/luxary_homes/users/user_components/property_components/house_rule_card/house_rule_card_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'property_listing_view_model.dart';
export 'property_listing_view_model.dart';

class PropertyListingViewWidget extends StatefulWidget {
  const PropertyListingViewWidget({super.key});

  @override
  State<PropertyListingViewWidget> createState() =>
      _PropertyListingViewWidgetState();
}

class _PropertyListingViewWidgetState extends State<PropertyListingViewWidget> {
  late PropertyListingViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertyListingViewModel());

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
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Property Details',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: Color(0xFF000D3E),
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: Color(0xFFBBD1EA),
                        icon: Icon(
                          Icons.clear,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: Color(0xFFBBD1EA),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(46.0, 24.0, 46.0, 24.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: MicroserviceAvailabilityAPIsGroup
                          .adminFullViewCall
                          .call(
                        articleId:
                            FFAppState().AdminLeasePropertyDetailView.articleId,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: SpinKitPulse(
                                color: FlutterFlowTheme.of(context).primary,
                                size: 40.0,
                              ),
                            ),
                          );
                        }
                        final columnAdminFullViewResponse = snapshot.data!;
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 24.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 0.5,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Container(
                                          width: 735.0,
                                          height: 403.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            child: Image.network(
                                              functions
                                                  .initImg(
                                                      functions
                                                          .listDataConversion(
                                                              getJsonField(
                                                            columnAdminFullViewResponse
                                                                .jsonBody,
                                                            r'''$.imageURLs''',
                                                          ).toString())
                                                          ?.toList(),
                                                      FFAppState().BaseUrl)!
                                                  .first,
                                              width: 735.0,
                                              height: 403.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            26.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              getJsonField(
                                                columnAdminFullViewResponse
                                                    .jsonBody,
                                                r'''$.title''',
                                              ).toString(),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Color(0xFF000D3E),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 28.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 10.0),
                                              child: Text(
                                                'Property type:',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Color(0xFF000D3E),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              getJsonField(
                                                columnAdminFullViewResponse
                                                    .jsonBody,
                                                r'''$.propertyType''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 8.0),
                                              child: Text(
                                                'Property address:',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Color(0xFF000D3E),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/map_location_dot.svg',
                                                    width: 20.0,
                                                    height: 18.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    '${getJsonField(
                                                      columnAdminFullViewResponse
                                                          .jsonBody,
                                                      r'''$.plotNo''',
                                                    ).toString()},${getJsonField(
                                                      columnAdminFullViewResponse
                                                          .jsonBody,
                                                      r'''$.street''',
                                                    ).toString()},${getJsonField(
                                                      columnAdminFullViewResponse
                                                          .jsonBody,
                                                      r'''$.zipcode''',
                                                    ).toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 5.0)),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 14.0, 0.0, 0.0),
                                              child: Wrap(
                                                spacing: 15.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/house_chimney_blank.svg',
                                                          width: 20.0,
                                                          height: 18.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Text(
                                                        '${getJsonField(
                                                          columnAdminFullViewResponse
                                                              .jsonBody,
                                                          r'''$.totalGuests''',
                                                        ).toString()} Guests',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 5.0)),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width: 6.0,
                                                        height: 6.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFBBD1EA),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      ),
                                                      Text(
                                                        '${getJsonField(
                                                          columnAdminFullViewResponse
                                                              .jsonBody,
                                                          r'''$.bedrooms''',
                                                        ).toString()} Bedrooms',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 5.0)),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                        width: 6.0,
                                                        height: 6.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFBBD1EA),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      ),
                                                      Text(
                                                        '${getJsonField(
                                                          columnAdminFullViewResponse
                                                              .jsonBody,
                                                          r'''$.beds''',
                                                        ).toString()} beds',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 5.0)),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                        width: 6.0,
                                                        height: 6.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFBBD1EA),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      ),
                                                      Text(
                                                        '${getJsonField(
                                                          columnAdminFullViewResponse
                                                              .jsonBody,
                                                          r'''$.bathrooms''',
                                                        ).toString()} Bathrooms',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 5.0)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 10.0),
                                              child: Text(
                                                'Property Availability',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Color(0xFF000D3E),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                            ),
                                            RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: dateTimeFormat(
                                                        'dd-MM-yyyy',
                                                        functions
                                                            .strToDateTimeConversion(
                                                                getJsonField(
                                                          columnAdminFullViewResponse
                                                              .jsonBody,
                                                          r'''$.availableFrom''',
                                                        ).toString())),
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Color(0xFF000D3E),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14.0,
                                                    ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 24.0, 0.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                5.0, 0.0),
                                                    child: Text(
                                                      'Price per night:',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16.0,
                                                      ),
                                                    ),
                                                  ),
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: '₹',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: Color(
                                                                0xFFD70000),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 18.0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: getJsonField(
                                                            columnAdminFullViewResponse
                                                                .jsonBody,
                                                            r'''$.basePrice''',
                                                          ).toString(),
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFFD70000),
                                                            fontSize: 18.0,
                                                          ),
                                                        )
                                                      ],
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16.0,
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
                              Builder(
                                builder: (context) {
                                  final imagesList = functions
                                          .initImg(
                                              functions
                                                  .listDataConversion(
                                                      getJsonField(
                                                    columnAdminFullViewResponse
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
                                      children: List.generate(imagesList.length,
                                          (imagesListIndex) {
                                        final imagesListItem =
                                            imagesList[imagesListIndex];
                                        return Material(
                                          color: Colors.transparent,
                                          elevation: 0.5,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              child: Image.network(
                                                imagesListItem,
                                                width: 100.0,
                                                height: 100.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        );
                                      }).divide(SizedBox(width: 15.0)),
                                    ),
                                  );
                                },
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Wrap(
                                  spacing: 0.0,
                                  runSpacing: 0.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 12.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        -1.0),
                                                                child: Text(
                                                                  'Summary',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  columnAdminFullViewResponse
                                                                      .jsonBody,
                                                                  r'''$.description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      lineHeight:
                                                                          1.5,
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
                                                            .fromSTEB(0.0, 40.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'House Rules',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth:
                                                                      800.0,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Wrap(
                                                                  spacing: 20.0,
                                                                  runSpacing:
                                                                      30.0,
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      WrapCrossAlignment
                                                                          .start,
                                                                  direction: Axis
                                                                      .horizontal,
                                                                  runAlignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  verticalDirection:
                                                                      VerticalDirection
                                                                          .down,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
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
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              wrapWithModel(
                                                                                model: _model.houseRuleCardModel2,
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
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              wrapWithModel(
                                                                                model: _model.houseRuleCardModel3,
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
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              wrapWithModel(
                                                                                model: _model.houseRuleCardModel4,
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
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .houseRuleCardModel5,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            HouseRuleCardWidget(
                                                                          ruleNumber:
                                                                              '05',
                                                                          ruleHeading:
                                                                              'Cancellation/prepayment',
                                                                          ruleDescription:
                                                                              'Cancellation and prepayment policies vary according to apartment type. Please check the apartment conditions when selecting your apartment above.',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 15.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Column(
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
                                                                'What’s included:',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          24.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final amenitiesList = functions
                                                                          .listMapConversion(getJsonField(
                                                                            columnAdminFullViewResponse.jsonBody,
                                                                            r'''$.amenities''',
                                                                          ).toString())
                                                                          ?.toList() ??
                                                                      [];
                                                                  return Wrap(
                                                                    spacing:
                                                                        5.0,
                                                                    runSpacing:
                                                                        5.0,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        WrapCrossAlignment
                                                                            .start,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    runAlignment:
                                                                        WrapAlignment
                                                                            .start,
                                                                    verticalDirection:
                                                                        VerticalDirection
                                                                            .down,
                                                                    clipBehavior:
                                                                        Clip.none,
                                                                    children: List.generate(
                                                                        amenitiesList
                                                                            .length,
                                                                        (amenitiesListIndex) {
                                                                      final amenitiesListItem =
                                                                          amenitiesList[
                                                                              amenitiesListIndex];
                                                                      return Padding(
                                                                        padding:
                                                                            EdgeInsets.all(5.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children:
                                                                              [
                                                                            Container(
                                                                              width: 6.0,
                                                                              height: 6.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(6.0),
                                                                              ),
                                                                            ),
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(0.0),
                                                                              child: Image.network(
                                                                                functions.getImage(
                                                                                    FFAppState().BaseUrl,
                                                                                    getJsonField(
                                                                                      amenitiesListItem,
                                                                                      r'''$.imageIcon''',
                                                                                    ).toString())!,
                                                                                width: 25.0,
                                                                                height: 20.0,
                                                                                fit: BoxFit.contain,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              getJsonField(
                                                                                amenitiesListItem,
                                                                                r'''$.name''',
                                                                              ).toString(),
                                                                              textAlign: TextAlign.center,
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: Color(0xFF000D3E),
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 15.0)),
                                                                        ),
                                                                      );
                                                                    }),
                                                                  );
                                                                },
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
                                        ),
                                        wrapWithModel(
                                          model: _model.hostInformationModel,
                                          updateCallback: () => setState(() {}),
                                          child: HostInformationWidget(
                                            ownerUserName: getJsonField(
                                              columnAdminFullViewResponse
                                                  .jsonBody,
                                              r'''$.ownerUserName''',
                                            ).toString(),
                                            ownerPhoneNumber: getJsonField(
                                              columnAdminFullViewResponse
                                                  .jsonBody,
                                              r'''$.ownerPhoneNumber''',
                                            ).toString(),
                                            ownerEmailAddress: getJsonField(
                                              columnAdminFullViewResponse
                                                  .jsonBody,
                                              r'''$.ownerEmailAddress''',
                                            ).toString(),
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
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          -4.0,
                        ),
                        spreadRadius: 0.0,
                      )
                    ],
                  ),
                ),
                if (FFAppState().AdminLeasePropertyDetailView.status == 2)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 16.0, 30.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(
                          builder: (context) => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var _shouldSetState = false;
                                _model.refreshTokenRespApprove =
                                    await RefreshTokenAPICall.call(
                                  clientId: FFAppConstants.clientId,
                                  clientSecret: FFAppConstants.clientSecret,
                                  grantType: FFAppConstants.refreshGrantType,
                                  refreshToken: FFAppState().refreshToken,
                                );
                                _shouldSetState = true;
                                if ((_model
                                        .refreshTokenRespApprove?.succeeded ??
                                    true)) {
                                  _model.updatePage(() {
                                    FFAppState().accessToken = getJsonField(
                                      (_model.refreshTokenRespApprove
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.access_token''',
                                    ).toString();
                                    FFAppState().refreshToken = getJsonField(
                                      (_model.refreshTokenRespApprove
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.refresh_token''',
                                    ).toString();
                                  });
                                  await showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: ReasonForApprovalWidget(
                                          propertyId: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .propertyId,
                                          articleId: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .articleId,
                                          propertyStatus: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .status,
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));

                                  if (_shouldSetState) setState(() {});
                                  return;
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Information'),
                                        content: Text(
                                            'Your session is expried, please relogin.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }

                                if (_shouldSetState) setState(() {});
                              },
                              text: 'Approve',
                              options: FFButtonOptions(
                                width: 320.0,
                                height: 36.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF80BB01),
                                textStyle: GoogleFonts.getFont(
                                  'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var _shouldSetState = false;
                                _model.refreshTokenRespReject =
                                    await RefreshTokenAPICall.call(
                                  clientId: FFAppConstants.clientId,
                                  clientSecret: FFAppConstants.clientSecret,
                                  grantType: FFAppConstants.refreshGrantType,
                                  refreshToken: FFAppState().refreshToken,
                                );
                                _shouldSetState = true;
                                if ((_model.refreshTokenRespReject?.succeeded ??
                                    true)) {
                                  _model.updatePage(() {
                                    FFAppState().accessToken = getJsonField(
                                      (_model.refreshTokenRespReject
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.access_token''',
                                    ).toString();
                                    FFAppState().refreshToken = getJsonField(
                                      (_model.refreshTokenRespReject
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.refresh_token''',
                                    ).toString();
                                  });
                                  await showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: ReasonForRejectCompWidget(
                                          propertyId: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .propertyId,
                                          articleId: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .articleId,
                                          propertyStatus: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .status,
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));

                                  if (_shouldSetState) setState(() {});
                                  return;
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Information'),
                                        content: Text(
                                            'Your session is expried, please relogin.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }

                                if (_shouldSetState) setState(() {});
                              },
                              text: 'Reject',
                              options: FFButtonOptions(
                                width: 320.0,
                                height: 36.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFD70000),
                                textStyle: GoogleFonts.getFont(
                                  'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                                elevation: 4.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (FFAppState().AdminLeasePropertyDetailView.status == 1)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 16.0, 30.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: 'Cancel',
                            options: FFButtonOptions(
                              width: 320.0,
                              height: 36.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xE6BBD1EA),
                              textStyle: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var _shouldSetState = false;
                                _model.refreshTokenRespBlock =
                                    await RefreshTokenAPICall.call(
                                  clientId: FFAppConstants.clientId,
                                  clientSecret: FFAppConstants.clientSecret,
                                  grantType: FFAppConstants.refreshGrantType,
                                  refreshToken: FFAppState().refreshToken,
                                );
                                _shouldSetState = true;
                                if ((_model.refreshTokenRespBlock?.succeeded ??
                                    true)) {
                                  _model.updatePage(() {
                                    FFAppState().accessToken = getJsonField(
                                      (_model.refreshTokenRespBlock?.jsonBody ??
                                          ''),
                                      r'''$.access_token''',
                                    ).toString();
                                    FFAppState().refreshToken = getJsonField(
                                      (_model.refreshTokenRespBlock?.jsonBody ??
                                          ''),
                                      r'''$.refresh_token''',
                                    ).toString();
                                  });
                                  await showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: ReasonForBlockWidget(
                                          propertyId: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .propertyId,
                                          articleId: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .articleId,
                                          propertyStatus: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .status,
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));

                                  if (_shouldSetState) setState(() {});
                                  return;
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Information'),
                                        content: Text(
                                            'Your session is expried, please relogin.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }

                                if (_shouldSetState) setState(() {});
                              },
                              text: 'Block',
                              options: FFButtonOptions(
                                width: 320.0,
                                height: 36.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFD70000),
                                textStyle: GoogleFonts.getFont(
                                  'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (FFAppState().AdminLeasePropertyDetailView.status == 0)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 16.0, 30.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: 'Cancel',
                            options: FFButtonOptions(
                              width: 320.0,
                              height: 36.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xE6BBD1EA),
                              textStyle: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var _shouldSetState = false;
                                _model.refreshTokenRespApproved =
                                    await RefreshTokenAPICall.call(
                                  clientId: FFAppConstants.clientId,
                                  clientSecret: FFAppConstants.clientSecret,
                                  grantType: FFAppConstants.refreshGrantType,
                                  refreshToken: FFAppState().refreshToken,
                                );
                                _shouldSetState = true;
                                if ((_model
                                        .refreshTokenRespApproved?.succeeded ??
                                    true)) {
                                  _model.updatePage(() {
                                    FFAppState().accessToken = getJsonField(
                                      (_model.refreshTokenRespApproved
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.access_token''',
                                    ).toString();
                                    FFAppState().refreshToken = getJsonField(
                                      (_model.refreshTokenRespApproved
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.refresh_token''',
                                    ).toString();
                                  });
                                  await showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: ReasonForApprovalWidget(
                                          propertyId: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .propertyId,
                                          articleId: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .articleId,
                                          propertyStatus: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .status,
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));

                                  if (_shouldSetState) setState(() {});
                                  return;
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Information'),
                                        content: Text(
                                            'Your session is expried, please relogin.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }

                                if (_shouldSetState) setState(() {});
                              },
                              text: 'Approve',
                              options: FFButtonOptions(
                                width: 320.0,
                                height: 36.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF80BB01),
                                textStyle: GoogleFonts.getFont(
                                  'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (FFAppState().AdminLeasePropertyDetailView.status == 3)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 16.0, 30.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: 'Cancel',
                            options: FFButtonOptions(
                              width: 320.0,
                              height: 36.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xE6BBD1EA),
                              textStyle: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var _shouldSetState = false;
                                _model.refreshTokenRespUnblock =
                                    await RefreshTokenAPICall.call(
                                  clientId: FFAppConstants.clientId,
                                  clientSecret: FFAppConstants.clientSecret,
                                  grantType: FFAppConstants.refreshGrantType,
                                  refreshToken: FFAppState().refreshToken,
                                );
                                _shouldSetState = true;
                                if ((_model
                                        .refreshTokenRespUnblock?.succeeded ??
                                    true)) {
                                  setState(() {
                                    FFAppState().accessToken = getJsonField(
                                      (_model.refreshTokenRespUnblock
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.access_token''',
                                    ).toString();
                                    FFAppState().refreshToken = getJsonField(
                                      (_model.refreshTokenRespUnblock
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.refresh_token''',
                                    ).toString();
                                  });
                                  await showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: ReasonForUnBlockWidget(
                                          propertyId: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .propertyId,
                                          articleId: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .articleId,
                                          propertyStatus: FFAppState()
                                              .AdminLeasePropertyDetailView
                                              .status,
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));

                                  if (_shouldSetState) setState(() {});
                                  return;
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Information'),
                                        content: Text(
                                            'Your session is expried, please relogin.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }

                                if (_shouldSetState) setState(() {});
                              },
                              text: 'Unblock',
                              options: FFButtonOptions(
                                width: 320.0,
                                height: 36.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF80BB01),
                                textStyle: GoogleFonts.getFont(
                                  'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
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
    );
  }
}
