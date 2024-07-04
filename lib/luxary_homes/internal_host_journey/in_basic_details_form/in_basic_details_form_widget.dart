import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'in_basic_details_form_model.dart';
export 'in_basic_details_form_model.dart';

class InBasicDetailsFormWidget extends StatefulWidget {
  const InBasicDetailsFormWidget({super.key});

  @override
  State<InBasicDetailsFormWidget> createState() =>
      _InBasicDetailsFormWidgetState();
}

class _InBasicDetailsFormWidgetState extends State<InBasicDetailsFormWidget> {
  late InBasicDetailsFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InBasicDetailsFormModel());

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

    return SingleChildScrollView(
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
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Guests',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 36.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBgOpacity,
                                icon: Icon(
                                  Icons.remove,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                                onPressed: (FFAppState().basicDetailsGuests ==
                                        1)
                                    ? null
                                    : () async {
                                        FFAppState().basicDetailsGuests =
                                            FFAppState().basicDetailsGuests +
                                                -1;
                                        setState(() {});
                                      },
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    FFAppState().basicDetailsGuests.toString(),
                                    '00',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 36.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBgOpacity,
                                icon: Icon(
                                  Icons.add,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                                onPressed: () async {
                                  FFAppState().basicDetailsGuests =
                                      FFAppState().basicDetailsGuests + 1;
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 26.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bedrooms',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 36.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBgOpacity,
                                icon: Icon(
                                  Icons.remove,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                                onPressed: (FFAppState().basicDetailsBedrooms ==
                                        1)
                                    ? null
                                    : () async {
                                        FFAppState().basicDetailsBedrooms =
                                            FFAppState().basicDetailsBedrooms +
                                                -1;
                                        setState(() {});
                                      },
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Text(
                                  FFAppState().basicDetailsBedrooms.toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 36.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBgOpacity,
                                icon: Icon(
                                  Icons.add,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                                onPressed: () async {
                                  FFAppState().basicDetailsBedrooms =
                                      FFAppState().basicDetailsBedrooms + 1;
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 26.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Beds',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 36.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBgOpacity,
                                icon: Icon(
                                  Icons.remove,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                                onPressed: (FFAppState().basicDetailsBeds == 1)
                                    ? null
                                    : () async {
                                        FFAppState().basicDetailsBeds =
                                            FFAppState().basicDetailsBeds + -1;
                                        setState(() {});
                                      },
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    FFAppState().basicDetailsBeds.toString(),
                                    '00',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 36.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBgOpacity,
                                icon: Icon(
                                  Icons.add,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                                onPressed: () async {
                                  FFAppState().basicDetailsBeds =
                                      FFAppState().basicDetailsBeds + 1;
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 26.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bathrooms',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 36.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBgOpacity,
                                icon: Icon(
                                  Icons.remove,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                                onPressed:
                                    (FFAppState().basicDetailsBathrooms == 1)
                                        ? null
                                        : () async {
                                            FFAppState().basicDetailsBathrooms =
                                                FFAppState()
                                                        .basicDetailsBathrooms +
                                                    -1;
                                            setState(() {});
                                          },
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    FFAppState()
                                        .basicDetailsBathrooms
                                        .toString(),
                                    '00',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 36.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBgOpacity,
                                icon: Icon(
                                  Icons.add,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 20.0,
                                ),
                                onPressed: () async {
                                  FFAppState().basicDetailsBathrooms =
                                      FFAppState().basicDetailsBathrooms + 1;
                                  setState(() {});
                                },
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
    );
  }
}
