import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'property_location_model.dart';
export 'property_location_model.dart';

class PropertyLocationWidget extends StatefulWidget {
  const PropertyLocationWidget({super.key});

  @override
  State<PropertyLocationWidget> createState() => _PropertyLocationWidgetState();
}

class _PropertyLocationWidgetState extends State<PropertyLocationWidget> {
  late PropertyLocationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertyLocationModel());

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
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (MediaQuery.sizeOf(context).width >= 500.0)
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            '',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      Flexible(
                        child: Text(
                          'Where’s your place located?',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            buttonSize: 40.0,
                            fillColor:
                                FlutterFlowTheme.of(context).secondaryBgOpacity,
                            icon: Icon(
                              Icons.close,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().propertyType = jsonDecode(
                                  '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                              FFAppState().selectedAMNames = [];
                              FFAppState().webHostStepIndex = 0;
                              FFAppState().SavedRoute = '';
                              FFAppState().SelectedAmenities = [];
                              FFAppState().webHostSaveRoute = 0;
                              FFAppState().update(() {});
                              if (MediaQuery.sizeOf(context).width >= 500.0) {
                                Navigator.pop(context);

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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).primaryText,
              ),
              Expanded(
                child: Wrap(
                  spacing: 5.0,
                  runSpacing: 10.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width <= 500.0
                          ? MediaQuery.sizeOf(context).width
                          : (MediaQuery.sizeOf(context).width * 0.5),
                      height: MediaQuery.sizeOf(context).width <= 500.0
                          ? (MediaQuery.sizeOf(context).height * 0.45)
                          : (MediaQuery.sizeOf(context).height * 0.6),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Stack(
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Builder(builder: (context) {
                                final _googleMapMarker =
                                    _model.placePickerValue.latLng;
                                return FlutterFlowGoogleMap(
                                  controller: _model.googleMapsController,
                                  onCameraIdle: (latLng) => setState(
                                      () => _model.googleMapsCenter = latLng),
                                  initialLocation: _model.googleMapsCenter ??=
                                      LatLng(17.385044, 78.486671),
                                  markers: [
                                    if (_googleMapMarker != null)
                                      FlutterFlowMarker(
                                        _googleMapMarker.serialize(),
                                        _googleMapMarker,
                                      ),
                                  ],
                                  markerColor: GoogleMarkerColor.red,
                                  mapType: MapType.normal,
                                  style: GoogleMapStyle.standard,
                                  initialZoom: 14.0,
                                  allowInteraction: true,
                                  allowZoom: true,
                                  showZoomControls: false,
                                  showLocation: true,
                                  showCompass: true,
                                  showMapToolbar: true,
                                  showTraffic: false,
                                  centerMapOnMarkerTap: true,
                                );
                              }),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: PointerInterceptor(
                                intercepting: isWeb,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 12.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      currentUserLocationValue =
                                          await getCurrentUserLocation(
                                              defaultLocation:
                                                  LatLng(0.0, 0.0));
                                      FFAppState().currentLocationLatLng =
                                          currentUserLocationValue;
                                      FFAppState().isCurrentLocation = true;
                                      setState(() {});
                                    },
                                    text: 'Choose from current location',
                                    icon: FaIcon(
                                      FontAwesomeIcons.mapPin,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 16.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context).info,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().disableProperty &&
                              responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                            PointerInterceptor(
                              intercepting: isWeb,
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                child: custom_widgets.StaticMapMarker(
                                  width: double.infinity,
                                  height: double.infinity,
                                  latitude: random_data.randomDouble(0.0, 1.0),
                                  longitude: random_data.randomDouble(0.0, 1.0),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width <= 500.0
                          ? MediaQuery.sizeOf(context).width
                          : (MediaQuery.sizeOf(context).width * 0.2),
                      height: MediaQuery.sizeOf(context).width <= 500.0
                          ? (MediaQuery.sizeOf(context).height * 0.45)
                          : (MediaQuery.sizeOf(context).height * 0.7),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 26.0, 0.0, 8.0),
                              child: Text(
                                'Location',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: FlutterFlowPlacePicker(
                                    iOSGoogleMapsApiKey:
                                        'AIzaSyDGjszly9ypbkS0K7PygkEg0aosjLX63G8',
                                    androidGoogleMapsApiKey:
                                        'AIzaSyBAy63Gz9JfOiTkfFKHtBbdVTmN1Cy5UY8',
                                    webGoogleMapsApiKey:
                                        'AIzaSyDshXiF6E93RlecM_49nW542f_diwBDuow',
                                    onSelect: (place) async {
                                      setState(() =>
                                          _model.placePickerValue = place);
                                      (await _model.googleMapsController.future)
                                          .animateCamera(CameraUpdate.newLatLng(
                                              place.latLng.toGoogleMaps()));
                                    },
                                    defaultText: 'Select Location',
                                    icon: Icon(
                                      Icons.place,
                                      color: Color(0xFFFF0000),
                                      size: 16.0,
                                    ),
                                    buttonOptions: FFButtonOptions(
                                      width: double.infinity,
                                      height: 44.0,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: Color(0xFFBBD1EA),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().update(() {});
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 2.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 44.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xFFBBD1EA),
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            '📍',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
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
              Container(
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
                    mainAxisAlignment: MainAxisAlignment.start,
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
                                if (MediaQuery.sizeOf(context).width >= 500.0) {
                                  FFAppState().webHostStepIndex =
                                      FFAppState().webHostStepIndex + -1;
                                  FFAppState().update(() {});
                                } else {
                                  await actions.hostBackRoute(
                                    context,
                                    'propertyLocation',
                                  );
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
                                      fontFamily: 'Poppins',
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
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.placePickerValue.address !=
                                            null &&
                                        _model.placePickerValue.address != '') {
                                      if (MediaQuery.sizeOf(context).width >=
                                          500.0) {
                                        FFAppState().webHostStepIndex =
                                            FFAppState().webHostStepIndex + 1;
                                        FFAppState().update(() {});
                                        return;
                                      } else {
                                        await actions.hostForwardRoute(
                                          context,
                                          'propertyLocation',
                                        );
                                        return;
                                      }
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Alert'),
                                            content: Text(
                                                'Select Loaction filed is required.'),
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
                                            500.0
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
                                          fontFamily: 'Poppins',
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Next',
                                  options: FFButtonOptions(
                                    width: MediaQuery.sizeOf(context).width <=
                                            500.0
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
                                          fontFamily: 'Poppins',
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
                          onTap: () async {},
                          child: Text(
                            'Save & Exit',
                            style: FlutterFlowTheme.of(context)
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
