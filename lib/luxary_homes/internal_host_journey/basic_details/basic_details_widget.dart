import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'basic_details_model.dart';
export 'basic_details_model.dart';

class BasicDetailsWidget extends StatefulWidget {
  const BasicDetailsWidget({super.key});

  @override
  State<BasicDetailsWidget> createState() => _BasicDetailsWidgetState();
}

class _BasicDetailsWidgetState extends State<BasicDetailsWidget> {
  late BasicDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BasicDetailsModel());

    _model.priceTextFieldTextController ??= TextEditingController(
        text: FFAppState()
            .internalPropertyHostingDetails
            .roomPricePerNight
            .toString());
    _model.priceTextFieldFocusNode ??= FocusNode();

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
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (MediaQuery.sizeOf(context).width >= 500.0)
                      Text(
                        '',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Work Sans',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    Flexible(
                      child: AutoSizeText(
                        'Share some basics about your property',
                        textAlign: TextAlign.start,
                        minFontSize: 14.0,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Work Sans',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FlutterFlowIconButton(
                        borderColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: 30.0,
                        buttonSize: 36.0,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
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
                          if (MediaQuery.sizeOf(context).width < 991.0) {
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
                          } else {
                            Navigator.pop(context);
                            return;
                          }
                        },
                      ),
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width <= 500.0
                              ? MediaQuery.sizeOf(context).width
                              : (MediaQuery.sizeOf(context).width * 0.28),
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 15.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Bedrooms',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                buttonSize: 36.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBgOpacity,
                                                disabledColor:
                                                    Color(0x32878787),
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: (FFAppState()
                                                            .internalPropertyHostingDetails
                                                            .noOfBedRooms ==
                                                        1)
                                                    ? null
                                                    : () async {
                                                        FFAppState()
                                                            .updateInternalPropertyHostingDetailsStruct(
                                                          (e) => e
                                                            ..incrementNoOfBedRooms(
                                                                -1),
                                                        );
                                                        setState(() {});
                                                      },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    FFAppState()
                                                        .internalPropertyHostingDetails
                                                        .noOfBedRooms
                                                        .toString(),
                                                    '1',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                buttonSize: 36.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBgOpacity,
                                                disabledColor:
                                                    Color(0x32878787),
                                                icon: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: (FFAppState()
                                                            .internalPropertyHostingDetails
                                                            .noOfBedRooms ==
                                                        6)
                                                    ? null
                                                    : () async {
                                                        FFAppState()
                                                            .updateInternalPropertyHostingDetailsStruct(
                                                          (e) => e
                                                            ..incrementNoOfBedRooms(
                                                                1),
                                                        );
                                                        setState(() {});
                                                      },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (valueOrDefault<int>(
                                          FFAppState()
                                              .internalPropertyHostingDetails
                                              .noOfBedRooms,
                                          1,
                                        ) >
                                        1)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Sharing allowed',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: FlutterFlowRadioButton(
                                                options: ['Yes', 'No'].toList(),
                                                onChanged: (val) async {
                                                  setState(() {});
                                                  FFAppState()
                                                      .updateInternalPropertyHostingDetailsStruct(
                                                    (e) => e
                                                      ..isSharedBookingAllowed =
                                                          _model.isSharingAllowedValue ==
                                                                  'Yes'
                                                              ? true
                                                              : false
                                                      ..noOfBedRooms = 1
                                                      ..bedsPerRoom = 1
                                                      ..bathroomsPerRoom = 1
                                                      ..guestsPerRoom = 1
                                                      ..sharedWashrooms = 1,
                                                  );
                                                  setState(() {});
                                                },
                                                controller: _model
                                                        .isSharingAllowedValueController ??=
                                                    FormFieldController<
                                                        String>(FFAppState()
                                                                .internalPropertyHostingDetails
                                                                .isSharedBookingAllowed ==
                                                            true
                                                        ? 'Yes'
                                                        : 'No'),
                                                optionHeight: 20.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                buttonPosition:
                                                    RadioButtonPosition.left,
                                                direction: Axis.horizontal,
                                                radioButtonColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                inactiveRadioButtonColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                toggleable: true,
                                                horizontalAlignment:
                                                    WrapAlignment.spaceBetween,
                                                verticalAlignment:
                                                    WrapCrossAlignment.start,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Beds Per Room',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                buttonSize: 36.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBgOpacity,
                                                disabledColor:
                                                    Color(0x32878787),
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: (FFAppState()
                                                            .internalPropertyHostingDetails
                                                            .bedsPerRoom ==
                                                        1)
                                                    ? null
                                                    : () async {
                                                        FFAppState()
                                                            .updateInternalPropertyHostingDetailsStruct(
                                                          (e) => e
                                                            ..incrementBedsPerRoom(
                                                                -1),
                                                        );
                                                        setState(() {});
                                                      },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    FFAppState()
                                                        .internalPropertyHostingDetails
                                                        .bedsPerRoom
                                                        .toString(),
                                                    '1',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                buttonSize: 36.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBgOpacity,
                                                disabledColor:
                                                    Color(0x32878787),
                                                icon: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: (FFAppState()
                                                            .internalPropertyHostingDetails
                                                            .bedsPerRoom ==
                                                        2)
                                                    ? null
                                                    : () async {
                                                        FFAppState()
                                                            .updateInternalPropertyHostingDetailsStruct(
                                                          (e) => e
                                                            ..incrementBedsPerRoom(
                                                                1),
                                                        );
                                                        setState(() {});
                                                      },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Guests Per Room',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                buttonSize: 36.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBgOpacity,
                                                disabledColor:
                                                    Color(0x32878787),
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: (FFAppState()
                                                            .internalPropertyHostingDetails
                                                            .guestsPerRoom ==
                                                        1)
                                                    ? null
                                                    : () async {
                                                        FFAppState()
                                                            .updateInternalPropertyHostingDetailsStruct(
                                                          (e) => e
                                                            ..incrementGuestsPerRoom(
                                                                -1),
                                                        );
                                                        setState(() {});
                                                      },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    FFAppState()
                                                        .internalPropertyHostingDetails
                                                        .guestsPerRoom
                                                        .toString(),
                                                    '1',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                buttonSize: 36.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBgOpacity,
                                                disabledColor:
                                                    Color(0x32878787),
                                                icon: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: (FFAppState()
                                                            .internalPropertyHostingDetails
                                                            .guestsPerRoom ==
                                                        2)
                                                    ? null
                                                    : () async {
                                                        FFAppState()
                                                            .updateInternalPropertyHostingDetailsStruct(
                                                          (e) => e
                                                            ..incrementGuestsPerRoom(
                                                                1),
                                                        );
                                                        setState(() {});
                                                      },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Bathrooms Per Room',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20.0,
                                                  buttonSize: 36.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBgOpacity,
                                                  disabledColor:
                                                      Color(0x32878787),
                                                  icon: Icon(
                                                    Icons.remove,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 20.0,
                                                  ),
                                                  onPressed: (FFAppState()
                                                              .internalPropertyHostingDetails
                                                              .bathroomsPerRoom ==
                                                          1)
                                                      ? null
                                                      : () async {
                                                          FFAppState()
                                                              .updateInternalPropertyHostingDetailsStruct(
                                                            (e) => e
                                                              ..incrementBathroomsPerRoom(
                                                                  -1),
                                                          );
                                                          setState(() {});
                                                        },
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      FFAppState()
                                                          .internalPropertyHostingDetails
                                                          .bathroomsPerRoom
                                                          .toString(),
                                                      '1',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20.0,
                                                  buttonSize: 36.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBgOpacity,
                                                  disabledColor:
                                                      Color(0x32878787),
                                                  icon: Icon(
                                                    Icons.add,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 20.0,
                                                  ),
                                                  onPressed: (FFAppState()
                                                              .internalPropertyHostingDetails
                                                              .bathroomsPerRoom ==
                                                          1)
                                                      ? null
                                                      : () async {
                                                          FFAppState()
                                                              .updateInternalPropertyHostingDetailsStruct(
                                                            (e) => e
                                                              ..incrementBathroomsPerRoom(
                                                                  1),
                                                          );
                                                          setState(() {});
                                                        },
                                                ),
                                              ],
                                            ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              '01',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Common Washrooms',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                buttonSize: 36.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBgOpacity,
                                                disabledColor:
                                                    Color(0x32878787),
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: (FFAppState()
                                                            .internalPropertyHostingDetails
                                                            .sharedWashrooms ==
                                                        0)
                                                    ? null
                                                    : () async {
                                                        FFAppState()
                                                            .updateInternalPropertyHostingDetailsStruct(
                                                          (e) => e
                                                            ..incrementSharedWashrooms(
                                                                -1),
                                                        );
                                                        setState(() {});
                                                      },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    FFAppState()
                                                        .internalPropertyHostingDetails
                                                        .sharedWashrooms
                                                        .toString(),
                                                    '1',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                buttonSize: 36.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBgOpacity,
                                                disabledColor:
                                                    Color(0x32878787),
                                                icon: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: (FFAppState()
                                                            .internalPropertyHostingDetails
                                                            .sharedWashrooms ==
                                                        2)
                                                    ? null
                                                    : () async {
                                                        FFAppState()
                                                            .updateInternalPropertyHostingDetailsStruct(
                                                          (e) => e
                                                            ..incrementSharedWashrooms(
                                                                1),
                                                        );
                                                        setState(() {});
                                                      },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (FFAppState()
                                                      .internalPropertyHostingDetails
                                                      .isSharedBookingAllowed ==
                                                  true)
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 8.0),
                                                    child: RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                'How much you want to charge for a room per night?',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: '*',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .errorText,
                                                              fontSize: 14.0,
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
                                                ),
                                              if (FFAppState()
                                                      .internalPropertyHostingDetails
                                                      .isSharedBookingAllowed ==
                                                  false)
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 8.0),
                                                    child: RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                'How much you want to charge for a property per night?',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: '*',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .errorText,
                                                              fontSize: 14.0,
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
                                                ),
                                            ],
                                          ),
                                          TextFormField(
                                            controller: _model
                                                .priceTextFieldTextController,
                                            focusNode:
                                                _model.priceTextFieldFocusNode,
                                            autofocus: false,
                                            textInputAction:
                                                TextInputAction.done,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: false,
                                              hintText: 'Enter the price',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                              errorStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .errorText,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .errorText,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 0.0, 14.0, 0.0),
                                            ),
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14.0,
                                            ),
                                            textAlign: TextAlign.start,
                                            maxLength: 5,
                                            maxLengthEnforcement:
                                                MaxLengthEnforcement.enforced,
                                            buildCounter: (context,
                                                    {required currentLength,
                                                    required isFocused,
                                                    maxLength}) =>
                                                null,
                                            keyboardType: TextInputType.number,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            validator: _model
                                                .priceTextFieldTextControllerValidator
                                                .asValidator(context),
                                            inputFormatters: [
                                              FilteringTextInputFormatter.allow(
                                                  RegExp('[0-9]'))
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 15.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        'From when this property is available?',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: '*',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .errorText,
                                                      fontSize: 14.0,
                                                    ),
                                                  )
                                                ],
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              final _datePickedDate =
                                                  await showDatePicker(
                                                context: context,
                                                initialDate:
                                                    getCurrentTimestamp,
                                                firstDate: getCurrentTimestamp,
                                                lastDate: DateTime(2050),
                                              );

                                              if (_datePickedDate != null) {
                                                safeSetState(() {
                                                  _model.datePicked = DateTime(
                                                    _datePickedDate.year,
                                                    _datePickedDate.month,
                                                    _datePickedDate.day,
                                                  );
                                                });
                                              }
                                              FFAppState()
                                                  .updateInternalPropertyHostingDetailsStruct(
                                                (e) => e
                                                  ..propertyAvailableFrom =
                                                      dateTimeFormat(
                                                          'dd-MM-yyyy',
                                                          _model.datePicked),
                                              );
                                              setState(() {});
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              height: 44.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .internalPropertyHostingDetails
                                                              .propertyAvailableFrom,
                                                          'dd MM yyyy',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.calendar_month,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 25.0,
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
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (MediaQuery.sizeOf(context).width >=
                                      500.0) {
                                    FFAppState().webHostStepIndex =
                                        FFAppState().webHostStepIndex + -1;
                                    FFAppState().update(() {});
                                    return;
                                  } else {
                                    await actions.hostBackRoute(
                                      context,
                                      'basicDetails',
                                    );
                                    return;
                                  }
                                },
                                text: 'Back',
                                options: FFButtonOptions(
                                  width:
                                      MediaQuery.sizeOf(context).width <= 550.0
                                          ? (MediaQuery.sizeOf(context).width *
                                              0.41)
                                          : 88.0,
                                  height: 36.0,
                                  padding: EdgeInsets.all(0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Work Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
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
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onLongPress: () async {
                                  if (_model.isSharingAllowed != null &&
                                      _model.isSharingAllowed != '') {
                                    FFAppState()
                                        .updateInternalPropertyHostingDetailsStruct(
                                      (e) => e
                                        ..isSharedBookingAllowed =
                                            _model.isSharingAllowedValue ==
                                                    'Yes'
                                                ? true
                                                : false,
                                    );
                                    setState(() {});
                                    if (MediaQuery.sizeOf(context).width >=
                                        500.0) {
                                      FFAppState().webHostStepIndex =
                                          FFAppState().webHostStepIndex + 1;
                                      FFAppState().update(() {});
                                      return;
                                    } else {
                                      await actions.hostForwardRoute(
                                        context,
                                        'amenities',
                                      );
                                      return;
                                    }
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Info'),
                                          content: Text(
                                              'Please choose whether sharing is allowed or not.'),
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
                                    return;
                                  }
                                },
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.isSharingAllowedValue != null &&
                                        _model.isSharingAllowedValue != '') {
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      if (_model.datePicked == null) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Info'),
                                              content: Text(
                                                  'Please enter the availability  date !'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        return;
                                      }
                                      FFAppState()
                                          .updateInternalPropertyHostingDetailsStruct(
                                        (e) => e
                                          ..roomPricePerNight = double.tryParse(
                                              _model
                                                  .priceTextFieldTextController
                                                  .text),
                                      );
                                      setState(() {});
                                      if (MediaQuery.sizeOf(context).width >=
                                          500.0) {
                                        FFAppState().webHostStepIndex =
                                            FFAppState().webHostStepIndex + 1;
                                        FFAppState().update(() {});
                                        return;
                                      } else {
                                        await actions.hostForwardRoute(
                                          context,
                                          'amenities',
                                        );
                                        return;
                                      }
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Info'),
                                            content: Text(
                                                'Please choose whether sharing is allowed or not.'),
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
                                      return;
                                    }
                                  },
                                  text: 'Next',
                                  options: FFButtonOptions(
                                    width: MediaQuery.sizeOf(context).width <=
                                            550.0
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
                                    .indexOf('basicDetails');
                                FFAppState().update(() {});
                                Navigator.pop(context);
                              } else {
                                FFAppState().SavedRoute = 'basicDetails';
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