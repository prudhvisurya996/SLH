import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'interior_inspection_model.dart';
export 'interior_inspection_model.dart';

class InteriorInspectionWidget extends StatefulWidget {
  const InteriorInspectionWidget({super.key});

  @override
  State<InteriorInspectionWidget> createState() =>
      _InteriorInspectionWidgetState();
}

class _InteriorInspectionWidgetState extends State<InteriorInspectionWidget> {
  late InteriorInspectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InteriorInspectionModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
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
      width: double.infinity,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      child: ExpandableNotifier(
        controller: _model.expandableExpandableController,
        child: ExpandablePanel(
          header: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Interior Inspection',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        TextSpan(
                          text: '*',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Poppins',
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          collapsed: Container(),
          expanded: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(50.0, 24.0, 50.0, 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flooring',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: FlutterFlowRadioButton(
                                options: ['Bad', 'Good', 'Excellent', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller: _model.flooringValueController ??=
                                    FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                textPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 50.0, 0.0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.horizontal,
                                radioButtonColor:
                                    FlutterFlowTheme.of(context).primary,
                                inactiveRadioButtonColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'Doors & Windows',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: FlutterFlowRadioButton(
                                options: ['Bad', 'Good', 'Excellent', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.doorsAndWindowsValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                textPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 50.0, 0.0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.horizontal,
                                radioButtonColor:
                                    FlutterFlowTheme.of(context).primary,
                                inactiveRadioButtonColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'Plumbing system',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: FlutterFlowRadioButton(
                                options: ['Bad', 'Good', 'Excellent', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.plumbingsystemsValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                textPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 50.0, 0.0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.horizontal,
                                radioButtonColor:
                                    FlutterFlowTheme.of(context).primary,
                                inactiveRadioButtonColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'HVAC system',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: FlutterFlowRadioButton(
                                options: ['Bad', 'Good', 'Excellent', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.hVACsystemsValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                textPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 50.0, 0.0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.horizontal,
                                radioButtonColor:
                                    FlutterFlowTheme.of(context).primary,
                                inactiveRadioButtonColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Walls and ceilings',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: FlutterFlowRadioButton(
                                options: ['Bad', 'Good', 'Excellent', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.wallsAndCeilingsValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                textPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 50.0, 0.0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.horizontal,
                                radioButtonColor:
                                    FlutterFlowTheme.of(context).primary,
                                inactiveRadioButtonColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'Electrical system',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: FlutterFlowRadioButton(
                                options: ['Bad', 'Good', 'Excellent', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.electricalSystemValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                textPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 50.0, 0.0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.horizontal,
                                radioButtonColor:
                                    FlutterFlowTheme.of(context).primary,
                                inactiveRadioButtonColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'Bathroom fixtures',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: FlutterFlowRadioButton(
                                options: ['Bad', 'Good', 'Excellent', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.bathroomfixturesValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                textPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 50.0, 0.0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.horizontal,
                                radioButtonColor:
                                    FlutterFlowTheme.of(context).primary,
                                inactiveRadioButtonColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'Customizable space(partitioning options)',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: FlutterFlowRadioButton(
                                options: ['Yes', 'No'].toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.customizableSpaceValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                textPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 50.0, 0.0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.horizontal,
                                radioButtonColor:
                                    FlutterFlowTheme.of(context).primary,
                                inactiveRadioButtonColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceEvenly,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'No. of balconies',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    buttonSize: 36.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBgOpacity,
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.remove,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed: (_model.noOfBalconies == 0)
                                        ? null
                                        : () async {
                                            setState(() {
                                              _model.noOfBalconies =
                                                  _model.noOfBalconies! + -1;
                                            });
                                          },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.noOfBalconies?.toString(),
                                        '0',
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
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed:
                                        (FFAppState().basicDetailsGuests == 20)
                                            ? null
                                            : () async {
                                                setState(() {
                                                  _model.noOfBalconies =
                                                      _model.noOfBalconies! + 1;
                                                });
                                              },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'No. of washrooms (common/attached)',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    buttonSize: 36.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBgOpacity,
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.remove,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed: (_model.noOfWashrooms == 0)
                                        ? null
                                        : () async {
                                            setState(() {
                                              _model.noOfWashrooms =
                                                  _model.noOfWashrooms! + -1;
                                            });
                                          },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.noOfWashrooms?.toString(),
                                        '0',
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
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed:
                                        (FFAppState().basicDetailsGuests == 20)
                                            ? null
                                            : () async {
                                                setState(() {
                                                  _model.noOfWashrooms =
                                                      _model.noOfWashrooms! + 1;
                                                });
                                              },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'No. of doors',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    buttonSize: 36.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBgOpacity,
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.remove,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed: (_model.noOfDoors == 0)
                                        ? null
                                        : () async {
                                            setState(() {
                                              _model.noOfDoors =
                                                  _model.noOfDoors! + -1;
                                            });
                                          },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.noOfDoors?.toString(),
                                        '0',
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
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed:
                                        (FFAppState().basicDetailsGuests == 20)
                                            ? null
                                            : () async {
                                                setState(() {
                                                  _model.noOfDoors =
                                                      _model.noOfDoors! + 1;
                                                });
                                              },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'No. of washbasins',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    buttonSize: 36.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBgOpacity,
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.remove,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed: (_model.noOfWashbasins == 0)
                                        ? null
                                        : () async {
                                            setState(() {
                                              _model.noOfWashbasins =
                                                  _model.noOfWashbasins! + -1;
                                            });
                                          },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.noOfWashbasins?.toString(),
                                        '0',
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
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed: (FFAppState()
                                                .basicDetailsGuests ==
                                            20)
                                        ? null
                                        : () async {
                                            setState(() {
                                              _model.noOfWashbasins =
                                                  _model.noOfWashbasins! + 1;
                                            });
                                          },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'No. of fans',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    buttonSize: 36.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBgOpacity,
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.remove,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed: (_model.noOfFans == 0)
                                        ? null
                                        : () async {
                                            setState(() {
                                              _model.noOfFans =
                                                  _model.noOfFans! + -1;
                                            });
                                          },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.noOfFans?.toString(),
                                        '0',
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
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed:
                                        (FFAppState().basicDetailsGuests == 20)
                                            ? null
                                            : () async {
                                                setState(() {
                                                  _model.noOfFans =
                                                      _model.noOfFans! + 1;
                                                });
                                              },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'No. of showers',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    buttonSize: 36.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBgOpacity,
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.remove,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed: (_model.noOfShowers == 0)
                                        ? null
                                        : () async {
                                            setState(() {
                                              _model.noOfShowers =
                                                  _model.noOfShowers! + -1;
                                            });
                                          },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.noOfShowers?.toString(),
                                        '0',
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
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed:
                                        (FFAppState().basicDetailsGuests == 20)
                                            ? null
                                            : () async {
                                                setState(() {
                                                  _model.noOfShowers =
                                                      _model.noOfShowers! + 1;
                                                });
                                              },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'No. of lights',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    buttonSize: 36.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBgOpacity,
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.remove,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed: (_model.noOfLights == 0)
                                        ? null
                                        : () async {
                                            setState(() {
                                              _model.noOfLights =
                                                  _model.noOfLights! + -1;
                                            });
                                          },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.noOfLights?.toString(),
                                        '0',
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
                                    disabledColor: Color(0x32878787),
                                    icon: Icon(
                                      Icons.add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed:
                                        (FFAppState().basicDetailsGuests == 20)
                                            ? null
                                            : () async {
                                                setState(() {
                                                  _model.noOfLights =
                                                      _model.noOfLights! + 1;
                                                });
                                              },
                                  ),
                                ],
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
          theme: ExpandableThemeData(
            tapHeaderToExpand: true,
            tapBodyToExpand: false,
            tapBodyToCollapse: false,
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            hasIcon: true,
            expandIcon: Icons.keyboard_arrow_down_outlined,
            collapseIcon: Icons.keyboard_arrow_up_outlined,
            iconSize: 40.0,
            iconColor: FlutterFlowTheme.of(context).primary,
          ),
        ),
      ),
    );
  }
}
