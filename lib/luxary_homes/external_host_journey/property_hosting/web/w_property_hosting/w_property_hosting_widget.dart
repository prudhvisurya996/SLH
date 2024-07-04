import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'w_property_hosting_model.dart';
export 'w_property_hosting_model.dart';

class WPropertyHostingWidget extends StatefulWidget {
  const WPropertyHostingWidget({super.key});

  @override
  State<WPropertyHostingWidget> createState() => _WPropertyHostingWidgetState();
}

class _WPropertyHostingWidgetState extends State<WPropertyHostingWidget> {
  late WPropertyHostingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WPropertyHostingModel());

    _model.propertyTitleTextController ??= TextEditingController();
    _model.propertyTitleFocusNode ??= FocusNode();

    _model.pricePerMonthTextController ??= TextEditingController();
    _model.pricePerMonthFocusNode ??= FocusNode();

    _model.propertydescriptionTextController ??= TextEditingController();
    _model.propertydescriptionFocusNode ??= FocusNode();

    _model.pincodeTextController ??= TextEditingController();
    _model.pincodeFocusNode ??= FocusNode();

    _model.countryTextController ??= TextEditingController();
    _model.countryFocusNode ??= FocusNode();

    _model.stateTextController ??= TextEditingController();
    _model.stateFocusNode ??= FocusNode();

    _model.cityTextController ??= TextEditingController(text: 'City/Town');
    _model.cityFocusNode ??= FocusNode();

    _model.localityFieldTextController ??= TextEditingController();

    _model.flatHouseVillanumberTextController ??= TextEditingController();
    _model.flatHouseVillanumberFocusNode ??= FocusNode();

    _model.streetAddressTextController ??= TextEditingController();
    _model.streetAddressFocusNode ??= FocusNode();

    _model.landmarkTextController ??= TextEditingController();
    _model.landmarkFocusNode ??= FocusNode();

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: AlignmentDirectional(-1.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25.0, 24.0, 0.0, 0.0),
              child: Text(
                'Join the thriving SID Luxury Homes community!',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'PT Serif',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 0.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Property type',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0xFFD70000),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: LiferayBaseUrlGroup.getPropertyTypesCall.call(),
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
                          final rowGetPropertyTypesResponse = snapshot.data!;
                          return Builder(
                            builder: (context) {
                              final propertyType =
                                  rowGetPropertyTypesResponse.jsonBody.toList();
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: List.generate(propertyType.length,
                                    (propertyTypeIndex) {
                                  final propertyTypeItem =
                                      propertyType[propertyTypeIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.updatePage(() {
                                        FFAppState().ExHostPropertyType =
                                            propertyTypeItem;
                                      });
                                    },
                                    child: Container(
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: valueOrDefault<Color>(
                                            getJsonField(
                                                      propertyTypeItem,
                                                      r'''$.id''',
                                                    ) ==
                                                    getJsonField(
                                                      FFAppState()
                                                          .ExHostPropertyType,
                                                      r'''$.id''',
                                                    )
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    functions.getIcon(
                                                        FFAppState().BaseUrl,
                                                        getJsonField(
                                                          propertyTypeItem,
                                                          r'''$.imageIcon''',
                                                        ).toString())!,
                                                    width: 22.0,
                                                    height: 22.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      getJsonField(
                                                        propertyTypeItem,
                                                        r'''$.name''',
                                                      ).toString(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            if (getJsonField(
                                                  propertyTypeItem,
                                                  r'''$.categoryId''',
                                                ) ==
                                                getJsonField(
                                                  FFAppState()
                                                      .ExHostPropertyType,
                                                  r'''$.categoryId''',
                                                ))
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.03, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Container(
                                                        width: 12.0,
                                                        height: 12.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (getJsonField(
                                                  propertyTypeItem,
                                                  r'''$.categoryId''',
                                                ) !=
                                                getJsonField(
                                                  FFAppState()
                                                      .ExHostPropertyType,
                                                  r'''$.categoryId''',
                                                ))
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.03, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }).divide(SizedBox(width: 15.0)),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Select BHK ',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0xFFD70000),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 25.0, 0.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: LiferayBaseUrlGroup.exHostSubPropertyTypesCall
                            .call(),
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
                          final rowExHostSubPropertyTypesResponse =
                              snapshot.data!;
                          return Builder(
                            builder: (context) {
                              final propertySubType =
                                  rowExHostSubPropertyTypesResponse.jsonBody
                                      .toList();
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: List.generate(propertySubType.length,
                                    (propertySubTypeIndex) {
                                  final propertySubTypeItem =
                                      propertySubType[propertySubTypeIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 24.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.updatePage(() {
                                          FFAppState().ExHostPropertySubType =
                                              propertySubTypeItem;
                                        });
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (getJsonField(
                                                propertySubTypeItem,
                                                r'''$.id''',
                                              ) ==
                                              getJsonField(
                                                FFAppState()
                                                    .ExHostPropertySubType,
                                                r'''$.id''',
                                              ))
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.03, 0.0),
                                              child: Container(
                                                width: 20.0,
                                                height: 20.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Container(
                                                    width: 12.0,
                                                    height: 12.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if (getJsonField(
                                                propertySubTypeItem,
                                                r'''$.id''',
                                              ) !=
                                              getJsonField(
                                                FFAppState()
                                                    .ExHostPropertySubType,
                                                r'''$.id''',
                                              ))
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.03, 0.0),
                                              child: Container(
                                                width: 20.0,
                                                height: 20.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Container(
                                              height: 36.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: valueOrDefault<Color>(
                                                    getJsonField(
                                                              propertySubTypeItem,
                                                              r'''$.id''',
                                                            ) ==
                                                            getJsonField(
                                                              FFAppState()
                                                                  .ExHostPropertySubType,
                                                              r'''$.id''',
                                                            )
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                  ),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  child: Text(
                                                    getJsonField(
                                                      propertySubTypeItem,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Colors.black,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 25.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 30.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Property Title',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '*',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Color(0xFFD70000),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
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
                                  TextFormField(
                                    controller:
                                        _model.propertyTitleTextController,
                                    focusNode: _model.propertyTitleFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Property Title',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      errorStyle: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              14.0, 0.0, 14.0, 0.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    maxLength: 50,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .propertyTitleTextControllerValidator
                                        .asValidator(context),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 30.0, 0.0, 10.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Property AvailableFrom',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '*',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Color(0xFFD70000),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        final _datePicked1Date =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: getCurrentTimestamp,
                                          firstDate: getCurrentTimestamp,
                                          lastDate: DateTime(2050),
                                        );

                                        if (_datePicked1Date != null) {
                                          safeSetState(() {
                                            _model.datePicked1 = DateTime(
                                              _datePicked1Date.year,
                                              _datePicked1Date.month,
                                              _datePicked1Date.day,
                                            );
                                          });
                                        }
                                      },
                                      child: Container(
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                dateTimeFormat('dd-MM-yyyy',
                                                    _model.datePicked1),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/calender_img.svg',
                                                  width: 20.0,
                                                  height: 22.0,
                                                  fit: BoxFit.contain,
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
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'PropertyPrice',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '* ',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Color(0xFFD70000),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '( per month )',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Color(0x99000D3E),
                                            fontSize: 14.0,
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
                                TextFormField(
                                  controller:
                                      _model.pricePerMonthTextController,
                                  focusNode: _model.pricePerMonthFocusNode,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Price per month',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    errorStyle: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            14.0, 0.0, 14.0, 0.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
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
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model
                                      .pricePerMonthTextControllerValidator
                                      .asValidator(context),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp('[0-9]'))
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 10.0),
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Property AvailableTo',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '*',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Color(0xFFD70000),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.datePicked1 == null) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Info'),
                                              content: Text(
                                                  'Please select \"Property Available From\" date.'),
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
                                      } else {
                                        final _datePicked2Date =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: (functions
                                                  .exHostAvailabledateSelection(
                                                      _model.datePicked1) ??
                                              DateTime.now()),
                                          firstDate: (functions
                                                  .exHostAvailabledateSelection(
                                                      _model.datePicked1) ??
                                              DateTime.now()),
                                          lastDate: DateTime(2050),
                                        );

                                        if (_datePicked2Date != null) {
                                          safeSetState(() {
                                            _model.datePicked2 = DateTime(
                                              _datePicked2Date.year,
                                              _datePicked2Date.month,
                                              _datePicked2Date.day,
                                            );
                                          });
                                        }
                                      }
                                    },
                                    child: Container(
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                dateTimeFormat('dd-MM-yyyy',
                                                    _model.datePicked2),
                                                'dd-MM-yyyy',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: SvgPicture.asset(
                                                'assets/images/calender_img.svg',
                                                width: 20.0,
                                                height: 22.0,
                                                fit: BoxFit.contain,
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
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 10.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Property Description',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0xFFD70000),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            TextSpan(
                              text: ' ( 500 Characters)',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0x80000D3E),
                                fontSize: 12.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                      child: TextFormField(
                        controller: _model.propertydescriptionTextController,
                        focusNode: _model.propertydescriptionFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          alignLabelWithHint: false,
                          hintText: 'Description here....',
                          hintStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                          errorStyle: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Poppins',
                                letterSpacing: 0.0,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              14.0, 10.0, 14.0, 10.0),
                        ),
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 6,
                        minLines: 1,
                        maxLength: 500,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model
                            .propertydescriptionTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 10.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Do you have existing Amenities? ',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            TextSpan(
                              text: '(Optional)',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0x80000D3E),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 25.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x4CBBD1EA),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 20.0, 16.0, 20.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: LiferayBaseUrlGroup.getAmenitiesCall.call(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 40.0,
                                    height: 40.0,
                                    child: SpinKitPulse(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 40.0,
                                    ),
                                  ),
                                );
                              }
                              final columnGetAmenitiesResponse = snapshot.data!;
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Standard Amenities',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final basicAM =
                                            LiferayBaseUrlGroup.getAmenitiesCall
                                                    .basicAmenities(
                                                      columnGetAmenitiesResponse
                                                          .jsonBody,
                                                    )
                                                    ?.toList() ??
                                                [];
                                        return Wrap(
                                          spacing: 10.0,
                                          runSpacing: 10.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: List.generate(
                                              basicAM.length, (basicAMIndex) {
                                            final basicAMItem =
                                                basicAM[basicAMIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                    .ExHostSelctedAM
                                                    .contains(getJsonField(
                                                      basicAMItem,
                                                      r'''$.categoryId''',
                                                    ))) {
                                                  _model.updatePage(() {
                                                    FFAppState()
                                                        .removeFromExHostSelctedAM(
                                                            getJsonField(
                                                      basicAMItem,
                                                      r'''$.categoryId''',
                                                    ));
                                                    FFAppState()
                                                        .removeFromExHostSelectedAMNames(
                                                            getJsonField(
                                                      basicAMItem,
                                                      r'''$.name''',
                                                    ).toString());
                                                  });
                                                } else {
                                                  _model.updatePage(() {
                                                    FFAppState()
                                                        .addToExHostSelctedAM(
                                                            getJsonField(
                                                      basicAMItem,
                                                      r'''$.categoryId''',
                                                    ));
                                                    FFAppState()
                                                        .addToExHostSelectedAMNames(
                                                            getJsonField(
                                                      basicAMItem,
                                                      r'''$.name''',
                                                    ).toString());
                                                  });
                                                }
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    if (FFAppState()
                                                        .ExHostSelctedAM
                                                        .contains(getJsonField(
                                                          basicAMItem,
                                                          r'''$.categoryId''',
                                                        )))
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width: 20.0,
                                                          height: 20.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Icon(
                                                              Icons.check_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              size: 16.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (!FFAppState()
                                                        .ExHostSelctedAM
                                                        .contains(getJsonField(
                                                          basicAMItem,
                                                          r'''$.categoryId''',
                                                        )))
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width: 20.0,
                                                          height: 20.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  4.0,
                                                                  8.0,
                                                                  4.0),
                                                      child: Text(
                                                        getJsonField(
                                                          basicAMItem,
                                                          r'''$.name''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 0.0),
                                    child: Text(
                                      'Safety Amenities',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final safetyAM =
                                            LiferayBaseUrlGroup.getAmenitiesCall
                                                    .securityAmenities(
                                                      columnGetAmenitiesResponse
                                                          .jsonBody,
                                                    )
                                                    ?.toList() ??
                                                [];
                                        return Wrap(
                                          spacing: 10.0,
                                          runSpacing: 0.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: List.generate(
                                              safetyAM.length, (safetyAMIndex) {
                                            final safetyAMItem =
                                                safetyAM[safetyAMIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                    .ExHostSelctedAM
                                                    .contains(getJsonField(
                                                      safetyAMItem,
                                                      r'''$.categoryId''',
                                                    ))) {
                                                  setState(() {
                                                    FFAppState()
                                                        .removeFromExHostSelctedAM(
                                                            getJsonField(
                                                      safetyAMItem,
                                                      r'''$.categoryId''',
                                                    ));
                                                    FFAppState()
                                                        .removeFromExHostSelectedAMNames(
                                                            getJsonField(
                                                      safetyAMItem,
                                                      r'''$.name''',
                                                    ).toString());
                                                  });
                                                } else {
                                                  setState(() {
                                                    FFAppState()
                                                        .addToExHostSelctedAM(
                                                            getJsonField(
                                                      safetyAMItem,
                                                      r'''$.categoryId''',
                                                    ));
                                                    FFAppState()
                                                        .addToExHostSelectedAMNames(
                                                            getJsonField(
                                                      safetyAMItem,
                                                      r'''$.categoryId''',
                                                    ).toString());
                                                  });
                                                }
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    if (FFAppState()
                                                        .ExHostSelctedAM
                                                        .contains(getJsonField(
                                                          safetyAMItem,
                                                          r'''$.categoryId''',
                                                        )))
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width: 20.0,
                                                          height: 20.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Icon(
                                                              Icons.check_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              size: 16.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (!FFAppState()
                                                        .ExHostSelctedAM
                                                        .contains(getJsonField(
                                                          safetyAMItem,
                                                          r'''$.categoryId''',
                                                        )))
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width: 20.0,
                                                          height: 20.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  4.0,
                                                                  8.0,
                                                                  4.0),
                                                      child: Text(
                                                        getJsonField(
                                                          safetyAMItem,
                                                          r'''$.name''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Property Address',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0xFFD70000),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 25.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        decoration: BoxDecoration(
                          color: Color(0x4CBBD1EA),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 20.0, 16.0, 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: Text(
                                            'Pincode/Zipcode',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: TextFormField(
                                                    controller: _model
                                                        .pincodeTextController,
                                                    focusNode:
                                                        _model.pincodeFocusNode,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.pincodeTextController',
                                                      Duration(
                                                          milliseconds: 2000),
                                                      () async {
                                                        var _shouldSetState =
                                                            false;
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .postalCodeLocalities =
                                                              false;
                                                        });
                                                        setState(() {
                                                          _model
                                                              .localityDropDownValueController
                                                              ?.reset();
                                                        });
                                                        setState(() {
                                                          _model
                                                              .countryTextController
                                                              ?.clear();
                                                          _model
                                                              .stateTextController
                                                              ?.clear();
                                                          _model
                                                              .cityTextController
                                                              ?.clear();
                                                          _model
                                                              .localityFieldTextController
                                                              ?.clear();
                                                        });
                                                        _model.pincodeResponseWeb =
                                                            await GetDataFromPinCodeCall
                                                                .call(
                                                          address: _model
                                                              .pincodeTextController
                                                              .text,
                                                          key: FFAppConstants
                                                              .googleApiKeyforPInCodeedonttouch,
                                                        );
                                                        _shouldSetState = true;
                                                        if (GetDataFromPinCodeCall
                                                                .status(
                                                              (_model.pincodeResponseWeb
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            'OK') {
                                                          if (GetDataFromPinCodeCall
                                                                      .postalCodeLocalities(
                                                                    (_model.pincodeResponseWeb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ) !=
                                                                  null &&
                                                              (GetDataFromPinCodeCall
                                                                      .postalCodeLocalities(
                                                                (_model.pincodeResponseWeb
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ))!
                                                                  .isNotEmpty) {
                                                            setState(() {
                                                              _model.countryTextController
                                                                      ?.text =
                                                                  (GetDataFromPinCodeCall
                                                                      .longNames(
                                                                (_model.pincodeResponseWeb
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )![GetDataFromPinCodeCall
                                                                              .longNames(
                                                                        (_model.pincodeResponseWeb?.jsonBody ??
                                                                            ''),
                                                                      )!
                                                                          .length -
                                                                      1]);
                                                            });
                                                            setState(() {
                                                              _model.stateTextController
                                                                      ?.text =
                                                                  (GetDataFromPinCodeCall
                                                                      .longNames(
                                                                (_model.pincodeResponseWeb
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )![GetDataFromPinCodeCall
                                                                              .longNames(
                                                                        (_model.pincodeResponseWeb?.jsonBody ??
                                                                            ''),
                                                                      )!
                                                                          .length -
                                                                      2]);
                                                            });
                                                            setState(() {
                                                              _model.cityTextController
                                                                      ?.text =
                                                                  (GetDataFromPinCodeCall
                                                                      .longNames(
                                                                (_model.pincodeResponseWeb
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )![GetDataFromPinCodeCall
                                                                              .longNames(
                                                                        (_model.pincodeResponseWeb?.jsonBody ??
                                                                            ''),
                                                                      )!
                                                                          .length -
                                                                      3]);
                                                            });
                                                            setState(() {
                                                              _model.localities =
                                                                  GetDataFromPinCodeCall
                                                                          .postalCodeLocalities(
                                                                (_model.pincodeResponseWeb
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )!
                                                                      .toList()
                                                                      .cast<
                                                                          String>();
                                                            });
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                      .postalCodeLocalities =
                                                                  true;
                                                            });
                                                            if (_shouldSetState)
                                                              setState(() {});
                                                            return;
                                                          } else {
                                                            setState(() {
                                                              _model.countryTextController
                                                                      ?.text =
                                                                  valueOrDefault<
                                                                      String>(
                                                                GetDataFromPinCodeCall
                                                                    .longNames(
                                                                  (_model.pincodeResponseWeb
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )?[GetDataFromPinCodeCall
                                                                            .longNames(
                                                                      (_model.pincodeResponseWeb
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!
                                                                        .length -
                                                                    1],
                                                                'Country',
                                                              );
                                                            });
                                                            setState(() {
                                                              _model.stateTextController
                                                                      ?.text =
                                                                  valueOrDefault<
                                                                      String>(
                                                                GetDataFromPinCodeCall
                                                                    .longNames(
                                                                  (_model.pincodeResponseWeb
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )?[GetDataFromPinCodeCall
                                                                            .longNames(
                                                                      (_model.pincodeResponseWeb
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!
                                                                        .length -
                                                                    2],
                                                                'State',
                                                              );
                                                            });
                                                            setState(() {
                                                              _model.cityTextController
                                                                      ?.text =
                                                                  valueOrDefault<
                                                                      String>(
                                                                GetDataFromPinCodeCall
                                                                    .longNames(
                                                                  (_model.pincodeResponseWeb
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )?[GetDataFromPinCodeCall
                                                                            .longNames(
                                                                      (_model.pincodeResponseWeb
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!
                                                                        .length -
                                                                    3],
                                                                'City/Town',
                                                              );
                                                            });
                                                            setState(() {
                                                              _model
                                                                  .localityFieldTextController
                                                                  ?.text = (valueOrDefault<
                                                                          String>(
                                                                        GetDataFromPinCodeCall
                                                                            .longNames(
                                                                          (_model.pincodeResponseWeb?.jsonBody ??
                                                                              ''),
                                                                        )?.length.toString(),
                                                                        'Country',
                                                                      ) ==
                                                                      '5'
                                                                  ? valueOrDefault<
                                                                      String>(
                                                                      GetDataFromPinCodeCall
                                                                          .longNames(
                                                                        (_model.pincodeResponseWeb?.jsonBody ??
                                                                            ''),
                                                                      )?[GetDataFromPinCodeCall.longNames(
                                                                            (_model.pincodeResponseWeb?.jsonBody ??
                                                                                ''),
                                                                          )!
                                                                              .length -
                                                                          4],
                                                                      'Locality',
                                                                    )
                                                                  : '');
                                                            });
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                      .postalCodeLocalities =
                                                                  false;
                                                            });
                                                            if (_shouldSetState)
                                                              setState(() {});
                                                            return;
                                                          }
                                                        } else {
                                                          if (_shouldSetState)
                                                            setState(() {});
                                                          return;
                                                        }

                                                        if (_shouldSetState)
                                                          setState(() {});
                                                      },
                                                    ),
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintText: 'Enter Pincode',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      suffixIcon: _model
                                                              .pincodeTextController!
                                                              .text
                                                              .isNotEmpty
                                                          ? InkWell(
                                                              onTap: () async {
                                                                _model
                                                                    .pincodeTextController
                                                                    ?.clear();
                                                                var _shouldSetState =
                                                                    false;
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .postalCodeLocalities =
                                                                      false;
                                                                });
                                                                setState(() {
                                                                  _model
                                                                      .localityDropDownValueController
                                                                      ?.reset();
                                                                });
                                                                setState(() {
                                                                  _model
                                                                      .countryTextController
                                                                      ?.clear();
                                                                  _model
                                                                      .stateTextController
                                                                      ?.clear();
                                                                  _model
                                                                      .cityTextController
                                                                      ?.clear();
                                                                  _model
                                                                      .localityFieldTextController
                                                                      ?.clear();
                                                                });
                                                                _model.pincodeResponseWeb =
                                                                    await GetDataFromPinCodeCall
                                                                        .call(
                                                                  address: _model
                                                                      .pincodeTextController
                                                                      .text,
                                                                  key: FFAppConstants
                                                                      .googleApiKeyforPInCodeedonttouch,
                                                                );
                                                                _shouldSetState =
                                                                    true;
                                                                if (GetDataFromPinCodeCall
                                                                        .status(
                                                                      (_model.pincodeResponseWeb
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ) ==
                                                                    'OK') {
                                                                  if (GetDataFromPinCodeCall
                                                                              .postalCodeLocalities(
                                                                            (_model.pincodeResponseWeb?.jsonBody ??
                                                                                ''),
                                                                          ) !=
                                                                          null &&
                                                                      (GetDataFromPinCodeCall
                                                                              .postalCodeLocalities(
                                                                        (_model.pincodeResponseWeb?.jsonBody ??
                                                                            ''),
                                                                      ))!
                                                                          .isNotEmpty) {
                                                                    setState(
                                                                        () {
                                                                      _model
                                                                          .countryTextController
                                                                          ?.text = (GetDataFromPinCodeCall.longNames(
                                                                        (_model.pincodeResponseWeb?.jsonBody ??
                                                                            ''),
                                                                      )![GetDataFromPinCodeCall.longNames(
                                                                            (_model.pincodeResponseWeb?.jsonBody ??
                                                                                ''),
                                                                          )!
                                                                              .length -
                                                                          1]);
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      _model
                                                                          .stateTextController
                                                                          ?.text = (GetDataFromPinCodeCall.longNames(
                                                                        (_model.pincodeResponseWeb?.jsonBody ??
                                                                            ''),
                                                                      )![GetDataFromPinCodeCall.longNames(
                                                                            (_model.pincodeResponseWeb?.jsonBody ??
                                                                                ''),
                                                                          )!
                                                                              .length -
                                                                          2]);
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      _model
                                                                          .cityTextController
                                                                          ?.text = (GetDataFromPinCodeCall.longNames(
                                                                        (_model.pincodeResponseWeb?.jsonBody ??
                                                                            ''),
                                                                      )![GetDataFromPinCodeCall.longNames(
                                                                            (_model.pincodeResponseWeb?.jsonBody ??
                                                                                ''),
                                                                          )!
                                                                              .length -
                                                                          3]);
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      _model
                                                                          .localities = GetDataFromPinCodeCall
                                                                              .postalCodeLocalities(
                                                                        (_model.pincodeResponseWeb?.jsonBody ??
                                                                            ''),
                                                                      )!
                                                                          .toList()
                                                                          .cast<
                                                                              String>();
                                                                    });
                                                                    FFAppState()
                                                                        .update(
                                                                            () {
                                                                      FFAppState()
                                                                              .postalCodeLocalities =
                                                                          true;
                                                                    });
                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  } else {
                                                                    setState(
                                                                        () {
                                                                      _model.countryTextController
                                                                              ?.text =
                                                                          valueOrDefault<
                                                                              String>(
                                                                        GetDataFromPinCodeCall
                                                                            .longNames(
                                                                          (_model.pincodeResponseWeb?.jsonBody ??
                                                                              ''),
                                                                        )?[GetDataFromPinCodeCall.longNames(
                                                                              (_model.pincodeResponseWeb?.jsonBody ?? ''),
                                                                            )!
                                                                                .length -
                                                                            1],
                                                                        'Country',
                                                                      );
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      _model.stateTextController
                                                                              ?.text =
                                                                          valueOrDefault<
                                                                              String>(
                                                                        GetDataFromPinCodeCall
                                                                            .longNames(
                                                                          (_model.pincodeResponseWeb?.jsonBody ??
                                                                              ''),
                                                                        )?[GetDataFromPinCodeCall.longNames(
                                                                              (_model.pincodeResponseWeb?.jsonBody ?? ''),
                                                                            )!
                                                                                .length -
                                                                            2],
                                                                        'State',
                                                                      );
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      _model.cityTextController
                                                                              ?.text =
                                                                          valueOrDefault<
                                                                              String>(
                                                                        GetDataFromPinCodeCall
                                                                            .longNames(
                                                                          (_model.pincodeResponseWeb?.jsonBody ??
                                                                              ''),
                                                                        )?[GetDataFromPinCodeCall.longNames(
                                                                              (_model.pincodeResponseWeb?.jsonBody ?? ''),
                                                                            )!
                                                                                .length -
                                                                            3],
                                                                        'City/Town',
                                                                      );
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      _model
                                                                          .localityFieldTextController
                                                                          ?.text = (valueOrDefault<String>(
                                                                                GetDataFromPinCodeCall.longNames(
                                                                                  (_model.pincodeResponseWeb?.jsonBody ?? ''),
                                                                                )?.length.toString(),
                                                                                'Country',
                                                                              ) ==
                                                                              '5'
                                                                          ? valueOrDefault<String>(
                                                                              GetDataFromPinCodeCall.longNames(
                                                                                (_model.pincodeResponseWeb?.jsonBody ?? ''),
                                                                              )?[GetDataFromPinCodeCall.longNames(
                                                                                    (_model.pincodeResponseWeb?.jsonBody ?? ''),
                                                                                  )!
                                                                                      .length -
                                                                                  4],
                                                                              'Locality',
                                                                            )
                                                                          : '');
                                                                    });
                                                                    FFAppState()
                                                                        .update(
                                                                            () {
                                                                      FFAppState()
                                                                              .postalCodeLocalities =
                                                                          false;
                                                                    });
                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  }
                                                                } else {
                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                }

                                                                if (_shouldSetState)
                                                                  setState(
                                                                      () {});
                                                                setState(() {});
                                                              },
                                                              child: Icon(
                                                                Icons.clear,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 18.0,
                                                              ),
                                                            )
                                                          : null,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    maxLength: 10,
                                                    maxLengthEnforcement:
                                                        MaxLengthEnforcement
                                                            .none,
                                                    buildCounter: (context,
                                                            {required currentLength,
                                                            required isFocused,
                                                            maxLength}) =>
                                                        null,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    validator: _model
                                                        .pincodeTextControllerValidator
                                                        .asValidator(context),
                                                    inputFormatters: [
                                                      FilteringTextInputFormatter
                                                          .allow(
                                                              RegExp('[0-9]'))
                                                    ],
                                                  ),
                                                ),
                                                if ((_model.pinTFchange ==
                                                        true) &&
                                                    responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                      tablet: false,
                                                      tabletLandscape: false,
                                                      desktop: false,
                                                    ))
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {},
                                                    child: Text(
                                                      'Get Location',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14.0,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        if (GetDataFromPinCodeCall.status(
                                              (_model.pincodeResponseWeb
                                                      ?.jsonBody ??
                                                  ''),
                                            ) ==
                                            'ZERO_RESULTS')
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 5.0, 0.0, 0.0),
                                              child: Text(
                                                'Pin code is not valid.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Country',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: TextFormField(
                                            controller:
                                                _model.countryTextController,
                                            focusNode: _model.countryFocusNode,
                                            autofocus: true,
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'country',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
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
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          14.0, 0.0, 14.0, 0.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                            validator: _model
                                                .countryTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(width: 24.0)),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'State',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.stateTextController,
                                              focusNode: _model.stateFocusNode,
                                              autofocus: true,
                                              readOnly: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'State',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(14.0, 0.0,
                                                            14.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              validator: _model
                                                  .stateTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'City/Town',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.cityTextController,
                                              focusNode: _model.cityFocusNode,
                                              autofocus: true,
                                              readOnly: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'City',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(14.0, 0.0,
                                                            14.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              validator: _model
                                                  .cityTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 24.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Locality',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          if ((_model.pincodeResponseWeb !=
                                                  null) &&
                                              (GetDataFromPinCodeCall
                                                      .postalCodeLocalities(
                                                    (_model.pincodeResponseWeb
                                                            ?.jsonBody ??
                                                        ''),
                                                  )?.length !=
                                                  null))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .localityDropDownValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: _model.localities,
                                                onChanged: (val) => setState(() =>
                                                    _model.localityDropDownValue =
                                                        val),
                                                height: 50.0,
                                                maxHeight:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.4,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                searchTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Select Locality',
                                                searchHintText:
                                                    'Search your locality',
                                                searchCursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderWidth: 2.0,
                                                borderRadius: 12.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: true,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          if (GetDataFromPinCodeCall
                                                  .postalCodeLocalities(
                                                (_model.pincodeResponseWeb
                                                        ?.jsonBody ??
                                                    ''),
                                              )?.length ==
                                              null)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Autocomplete<String>(
                                                initialValue:
                                                    TextEditingValue(),
                                                optionsBuilder:
                                                    (textEditingValue) {
                                                  if (textEditingValue.text ==
                                                      '') {
                                                    return const Iterable<
                                                        String>.empty();
                                                  }
                                                  return _model.localities
                                                      .where((option) {
                                                    final lowercaseOption =
                                                        option.toLowerCase();
                                                    return lowercaseOption
                                                        .contains(
                                                            textEditingValue
                                                                .text
                                                                .toLowerCase());
                                                  });
                                                },
                                                optionsViewBuilder: (context,
                                                    onSelected, options) {
                                                  return AutocompleteOptionsList(
                                                    textFieldKey:
                                                        _model.localityFieldKey,
                                                    textController: _model
                                                        .localityFieldTextController!,
                                                    options: options.toList(),
                                                    onSelected: onSelected,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textHighlightStyle:
                                                        TextStyle(),
                                                    elevation: 4.0,
                                                    optionBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    optionHighlightColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    maxHeight: 200.0,
                                                  );
                                                },
                                                onSelected: (String selection) {
                                                  setState(() => _model
                                                          .localityFieldSelectedOption =
                                                      selection);
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                },
                                                fieldViewBuilder: (
                                                  context,
                                                  textEditingController,
                                                  focusNode,
                                                  onEditingComplete,
                                                ) {
                                                  _model.localityFieldFocusNode =
                                                      focusNode;

                                                  _model.localityFieldTextController =
                                                      textEditingController;
                                                  return TextFormField(
                                                    key:
                                                        _model.localityFieldKey,
                                                    controller:
                                                        textEditingController,
                                                    focusNode: focusNode,
                                                    onEditingComplete:
                                                        onEditingComplete,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText: 'Locality',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  14.0,
                                                                  0.0,
                                                                  14.0,
                                                                  0.0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    validator: _model
                                                        .localityFieldTextControllerValidator
                                                        .asValidator(context),
                                                  );
                                                },
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Flat/House/Villa Number',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .flatHouseVillanumberTextController,
                                              focusNode: _model
                                                  .flatHouseVillanumberFocusNode,
                                              autofocus: false,
                                              textCapitalization:
                                                  TextCapitalization.words,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'Flat No',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                errorStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(14.0, 0.0,
                                                            14.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLength: 50,
                                              maxLengthEnforcement:
                                                  MaxLengthEnforcement.enforced,
                                              buildCounter: (context,
                                                      {required currentLength,
                                                      required isFocused,
                                                      maxLength}) =>
                                                  null,
                                              keyboardType:
                                                  TextInputType.streetAddress,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              validator: _model
                                                  .flatHouseVillanumberTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 24.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Street Address',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .streetAddressTextController,
                                              focusNode:
                                                  _model.streetAddressFocusNode,
                                              autofocus: false,
                                              textCapitalization:
                                                  TextCapitalization.words,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'Street Address',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                errorStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(14.0, 0.0,
                                                            14.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLength: 150,
                                              maxLengthEnforcement:
                                                  MaxLengthEnforcement.enforced,
                                              buildCounter: (context,
                                                      {required currentLength,
                                                      required isFocused,
                                                      maxLength}) =>
                                                  null,
                                              keyboardType:
                                                  TextInputType.streetAddress,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              validator: _model
                                                  .streetAddressTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Landmark ',
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '(Optional)',
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: Color(0x80000D3E),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.0,
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.landmarkTextController,
                                              focusNode:
                                                  _model.landmarkFocusNode,
                                              autofocus: false,
                                              textCapitalization:
                                                  TextCapitalization.words,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Landmark',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                errorStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(14.0, 0.0,
                                                            14.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLength: 150,
                                              maxLengthEnforcement:
                                                  MaxLengthEnforcement.enforced,
                                              buildCounter: (context,
                                                      {required currentLength,
                                                      required isFocused,
                                                      maxLength}) =>
                                                  null,
                                              keyboardType:
                                                  TextInputType.streetAddress,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              validator: _model
                                                  .landmarkTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 24.0)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Upload Property Images',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0xFFD70000),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 16.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Note: ',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0xFFD70000),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Please note that the first uploaded image will be displayed as the cover photo.',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0x80000000),
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    if (_model.uploadPictures.length == 0)
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: SvgPicture.asset(
                            'assets/images/man-taking-picture-of-new-house.svg',
                            width: 109.0,
                            height: 200.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    if (_model.uploadPictures.length != null)
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 24.0),
                          child: Builder(
                            builder: (context) {
                              final uploadImgs = _model.uploadPictures.toList();
                              return Wrap(
                                spacing: 5.0,
                                runSpacing: 5.0,
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: List.generate(uploadImgs.length,
                                    (uploadImgsIndex) {
                                  final uploadImgsItem =
                                      uploadImgs[uploadImgsIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: Container(
                                      width: 170.0,
                                      height: 140.0,
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
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft:
                                                      Radius.circular(16.0),
                                                  topRight:
                                                      Radius.circular(16.0),
                                                ),
                                                child: Image.memory(
                                                  uploadImgsItem.bytes ??
                                                      Uint8List.fromList([]),
                                                  width: double.infinity,
                                                  height: 110.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  _model
                                                      .removeFromUploadPictures(
                                                          uploadImgsItem);
                                                });
                                              },
                                              child: Text(
                                                'Delete',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                        ),
                      ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: Text(
                          'Upload your property images here',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Note: ',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFD70000),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            TextSpan(
                              text: 'Choose min 2 or 5 images!',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 24.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final selectedMedia = await selectMedia(
                              imageQuality: 100,
                              mediaSource: MediaSource.photoGallery,
                              multiImage: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              setState(() => _model.isDataUploading = true);
                              var selectedUploadedFiles = <FFUploadedFile>[];

                              try {
                                selectedUploadedFiles = selectedMedia
                                    .map((m) => FFUploadedFile(
                                          name: m.storagePath.split('/').last,
                                          bytes: m.bytes,
                                          height: m.dimensions?.height,
                                          width: m.dimensions?.width,
                                          blurHash: m.blurHash,
                                        ))
                                    .toList();
                              } finally {
                                _model.isDataUploading = false;
                              }
                              if (selectedUploadedFiles.length ==
                                  selectedMedia.length) {
                                setState(() {
                                  _model.uploadedLocalFiles =
                                      selectedUploadedFiles;
                                });
                              } else {
                                setState(() {});
                                return;
                              }
                            }

                            while (_model.index <
                                _model.uploadedLocalFiles.length) {
                              if (_model.index <
                                  _model.uploadedLocalFiles.length) {
                                if (FFAppState()
                                    .supportedFileExtensions
                                    .contains(functions.getFileExtensions(_model
                                        .uploadedLocalFiles[_model.index]))) {
                                  setState(() {
                                    _model.addToUploadPictures(_model
                                        .uploadedLocalFiles[_model.index]);
                                  });
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Info'),
                                        content: Text(
                                            'Unsupported  ${functions.getFileExtensions(_model.uploadedLocalFiles[_model.index])} File Format'),
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
                                }
                              }
                              setState(() {
                                _model.index = _model.index + 1;
                              });
                            }
                            setState(() {
                              _model.index = 0;
                            });
                            setState(() {
                              _model.isDataUploading = false;
                              _model.uploadedLocalFiles = [];
                            });
                          },
                          text: 'Upload Images',
                          options: FFButtonOptions(
                            width: 180.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFDCE1F9),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
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
            ),
          ),
        ],
      ),
    );
  }
}
