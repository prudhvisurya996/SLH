import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'property_summary_model.dart';
export 'property_summary_model.dart';

class PropertySummaryWidget extends StatefulWidget {
  const PropertySummaryWidget({super.key});

  @override
  State<PropertySummaryWidget> createState() => _PropertySummaryWidgetState();
}

class _PropertySummaryWidgetState extends State<PropertySummaryWidget> {
  late PropertySummaryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertySummaryModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (MediaQuery.sizeOf(context).width >= 500.0)
                      Text(
                        '',
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    Flexible(
                      child: Text(
                        'Summary of your property',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Work Sans',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: 30.0,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      icon: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        FFAppState().propertyType = jsonDecode(
                            '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                        FFAppState().selectedAMNames = [];
                        FFAppState().webHostStepIndex = 0;
                        FFAppState().SavedRoute = '';
                        FFAppState().SelectedAmenities = [];
                        FFAppState().webHostSaveRoute = 0;
                        FFAppState().internalPropertyHostingDetails =
                            InternalPropertyHostingDataStruct();
                        FFAppState().update(() {});
                        if (MediaQuery.sizeOf(context).width >= 500.0) {
                          Navigator.pop(context);
                          return;
                        } else {
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

                          return;
                        }
                      },
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width <= 550.0
                                    ? MediaQuery.sizeOf(context).width
                                    : (MediaQuery.sizeOf(context).width * 0.35),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 8.0, 8.0),
                                            child: Text(
                                              'Property Title:',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 8.0),
                                            child: Text(
                                              FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .title,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      desktop: false,
                                    ))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        child: Text(
                                          FFAppState()
                                              .internalPropertyHostingDetails
                                              .title,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Work Sans',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 8.0, 8.0),
                                            child: Text(
                                              'Property Type:',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 8.0),
                                          child: Text(
                                            getJsonField(
                                              FFAppState().propertyType,
                                              r'''$.name''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 8.0),
                                        child: Text(
                                          'Property Description:',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Work Sans',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Text(
                                        FFAppState()
                                            .internalPropertyHostingDetails
                                            .description,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Work Sans',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 8.0),
                                        child: Text(
                                          'Property Address',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Work Sans',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Text(
                                        '${FFAppState().internalPropertyHostingDetails.flatNo}, ${FFAppState().internalPropertyHostingDetails.streetAddress}, ${FFAppState().internalPropertyHostingDetails.locality}, ${FFAppState().internalPropertyHostingDetails.city}, ${FFAppState().internalPropertyHostingDetails.state}-${FFAppState().internalPropertyHostingDetails.zip}, ${FFAppState().internalPropertyHostingDetails.region}.${FFAppState().internalPropertyHostingDetails.landmark}',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Work Sans',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 8.0),
                                        child: Text(
                                          'Amenities:',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Work Sans',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Builder(
                                            builder: (context) {
                                              final amenitiesItems =
                                                  FFAppState()
                                                      .selectedAMNames
                                                      .toList();
                                              return Wrap(
                                                spacing: 3.0,
                                                runSpacing: 3.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: List.generate(
                                                    amenitiesItems.length,
                                                    (amenitiesItemsIndex) {
                                                  final amenitiesItemsItem =
                                                      amenitiesItems[
                                                          amenitiesItemsIndex];
                                                  return Text(
                                                    '${amenitiesItemsItem}${amenitiesItemsIndex == (FFAppState().selectedAMNames.length - 1) ? '.' : ','}',
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 14.0,
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width <= 550.0
                                    ? MediaQuery.sizeOf(context).width
                                    : (MediaQuery.sizeOf(context).width * 0.35),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      desktop: false,
                                    ))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 8.0),
                                          child: Text(
                                            'Amenities:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      desktop: false,
                                    ))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            desktop: false,
                                          ))
                                            Expanded(
                                              child: Builder(
                                                builder: (context) {
                                                  final amenitiesItems =
                                                      FFAppState()
                                                          .selectedAMNames
                                                          .toList();
                                                  return Wrap(
                                                    spacing: 3.0,
                                                    runSpacing: 3.0,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    crossAxisAlignment:
                                                        WrapCrossAlignment
                                                            .start,
                                                    direction: Axis.horizontal,
                                                    runAlignment:
                                                        WrapAlignment.start,
                                                    verticalDirection:
                                                        VerticalDirection.down,
                                                    clipBehavior: Clip.none,
                                                    children: List.generate(
                                                        amenitiesItems.length,
                                                        (amenitiesItemsIndex) {
                                                      final amenitiesItemsItem =
                                                          amenitiesItems[
                                                              amenitiesItemsIndex];
                                                      return Text(
                                                        '${amenitiesItemsItem}${amenitiesItemsIndex == (FFAppState().selectedAMNames.length - 1) ? '.' : ','}',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 14.0,
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ),
                                        ],
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                'Sharing Allowed:',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Text(
                                              FFAppState()
                                                          .internalPropertyHostingDetails
                                                          .isSharedBookingAllowed ==
                                                      true
                                                  ? 'Yes'
                                                  : 'No',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                'Bedrooms:',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Text(
                                              FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .noOfBedRooms
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .isSharedBookingAllowed ==
                                              false)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: Text(
                                                  'Beds:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          if (FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .isSharedBookingAllowed ==
                                              true)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: Text(
                                                  'Beds Per Room:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Text(
                                              FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .bedsPerRoom
                                                  .toString(),
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .isSharedBookingAllowed ==
                                              false)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: Text(
                                                  'Guests:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          if (FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .isSharedBookingAllowed ==
                                              true)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: Text(
                                                  'Guests Per Room:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Text(
                                              FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .guestsPerRoom
                                                  .toString(),
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .isSharedBookingAllowed ==
                                              false)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: Text(
                                                  'Bathrooms:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          if (FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .isSharedBookingAllowed ==
                                              true)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: Text(
                                                  'Bathrooms Per Room:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Text(
                                              FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .bathroomsPerRoom
                                                  .toString(),
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                'Shared Washrooms:',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Text(
                                              FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .sharedWashrooms
                                                  .toString(),
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .isSharedBookingAllowed ==
                                              true)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: Text(
                                                  'Room Price per night:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          if (FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .isSharedBookingAllowed ==
                                              false)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: Text(
                                                  'Property Price per night:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Text(
                                              FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .roomPricePerNight
                                                  .toString(),
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                'Available date:',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Text(
                                              FFAppState()
                                                  .internalPropertyHostingDetails
                                                  .propertyAvailableFrom,
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
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
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          -4.0,
                        ),
                      )
                    ],
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                if (MediaQuery.sizeOf(context).width >= 500.0) {
                                  FFAppState().webHostStepIndex =
                                      FFAppState().webHostStepIndex + -2;
                                  FFAppState().update(() {});
                                  return;
                                } else {
                                  await actions.hostBackRoute(
                                    context,
                                    'propertySummary',
                                  );
                                  return;
                                }
                              },
                              text: 'Back',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width <= 500.0
                                    ? (MediaQuery.sizeOf(context).width * 0.41)
                                    : 88.0,
                                height: 36.0,
                                padding: EdgeInsets.all(0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Work Sans',
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 4.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (MediaQuery.sizeOf(context).width >=
                                      500.0) {
                                    FFAppState().webHostStepIndex =
                                        FFAppState().webHostStepIndex + 1;
                                    FFAppState().update(() {});
                                  } else {
                                    await actions.hostForwardRoute(
                                      context,
                                      'propertySummary',
                                    );
                                  }
                                },
                                text: 'Confirm',
                                options: FFButtonOptions(
                                  width:
                                      MediaQuery.sizeOf(context).width <= 500.0
                                          ? (MediaQuery.sizeOf(context).width *
                                              0.41)
                                          : 343.0,
                                  height: 36.0,
                                  padding: EdgeInsets.all(0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Work Sans',
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 4.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (MediaQuery.sizeOf(context).width >= 500.0) {
                                FFAppState().webHostSaveRoute = FFAppState()
                                    .ManageRoutesList
                                    .toList()
                                    .indexOf('propertySummary');
                                FFAppState().update(() {});
                                Navigator.pop(context);
                              } else {
                                FFAppState().SavedRoute = 'propertySummary';
                                FFAppState().update(() {});

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
                              }
                            },
                            child: Text(
                              'Save & Exit',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Work Sans',
                                    letterSpacing: 0.0,
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
    );
  }
}
