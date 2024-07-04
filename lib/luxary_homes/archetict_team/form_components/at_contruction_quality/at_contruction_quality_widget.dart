import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'at_contruction_quality_model.dart';
export 'at_contruction_quality_model.dart';

class AtContructionQualityWidget extends StatefulWidget {
  const AtContructionQualityWidget({super.key});

  @override
  State<AtContructionQualityWidget> createState() =>
      _AtContructionQualityWidgetState();
}

class _AtContructionQualityWidgetState
    extends State<AtContructionQualityWidget> {
  late AtContructionQualityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AtContructionQualityModel());

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController2 =
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Container(
            width: double.infinity,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            child: ExpandableNotifier(
              controller: _model.expandableExpandableController1,
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
                                text: 'Construction Quality',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
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
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
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
                collapsed: Container(),
                expanded: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(50.0, 24.0, 50.0, 24.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Roof Condition',
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
                                      _model.roofConditionValueController1 ??=
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  toggleable: false,
                                  horizontalAlignment:
                                      WrapAlignment.spaceBetween,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Windows and Doors',
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
                                      _model.windowsandDoorsValueController1 ??=
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  toggleable: false,
                                  horizontalAlignment:
                                      WrapAlignment.spaceBetween,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Driveway and sidewalks',
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
                                  controller: _model
                                          .drivewayandsidewalksValueController1 ??=
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  toggleable: false,
                                  horizontalAlignment:
                                      WrapAlignment.spaceBetween,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Building painting condition',
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
                                  controller: _model
                                          .buildingpaintingconditionValueController1 ??=
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  toggleable: false,
                                  horizontalAlignment:
                                      WrapAlignment.spaceBetween,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Flooring condition',
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
                                  controller: _model
                                          .flooringConditionValueController ??=
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  toggleable: false,
                                  horizontalAlignment:
                                      WrapAlignment.spaceBetween,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Fire exits',
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
                                      _model.fireexitsValueController1 ??=
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  toggleable: false,
                                  horizontalAlignment:
                                      WrapAlignment.spaceEvenly,
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
                                'Walls and Siding',
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
                                      _model.wallsandSidingValueController1 ??=
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  toggleable: false,
                                  horizontalAlignment:
                                      WrapAlignment.spaceBetween,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Foundation and structure',
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
                                  controller: _model
                                          .foundationandstructureValueController1 ??=
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  toggleable: false,
                                  horizontalAlignment:
                                      WrapAlignment.spaceBetween,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Drainage system',
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
                                      _model.drainagesystemValueController1 ??=
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  toggleable: false,
                                  horizontalAlignment:
                                      WrapAlignment.spaceBetween,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Building condition',
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
                                  controller: _model
                                          .buildingconditionValueController1 ??=
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  toggleable: false,
                                  horizontalAlignment:
                                      WrapAlignment.spaceBetween,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Lift/ Staircase',
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
                                      _model.liftStaircaseValueController1 ??=
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  toggleable: false,
                                  horizontalAlignment:
                                      WrapAlignment.spaceBetween,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
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
          ),
        if (responsiveVisibility(
          context: context,
          desktop: false,
        ))
          Container(
            width: double.infinity,
            color: Color(0x67F9AE39),
            child: ExpandableNotifier(
              controller: _model.expandableExpandableController2,
              child: ExpandablePanel(
                header: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Construction Quality',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        TextSpan(
                          text: '*',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).error,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                            lineHeight: 3.0,
                          ),
                    ),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xCDFFFFFF),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Roof Condition',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Excellent', 'Good', 'Bad', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model.roofConditionValueController2 ??=
                                FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
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
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Walls and Siding',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Excellent', 'Good', 'Bad', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller:
                                _model.wallsandSidingValueController2 ??=
                                    FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
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
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Windows and Doors',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Excellent', 'Good', 'Bad', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller:
                                _model.windowsandDoorsValueController2 ??=
                                    FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
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
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Foundation and structure',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Excellent', 'Good', 'Bad', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model
                                    .foundationandstructureValueController2 ??=
                                FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
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
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Driveway and sidewalks',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Excellent', 'Good', 'Bad', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller:
                                _model.drivewayandsidewalksValueController2 ??=
                                    FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
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
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Drainage system',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Excellent', 'Good', 'Bad', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller:
                                _model.drainagesystemValueController2 ??=
                                    FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
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
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Building painting condition',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Excellent', 'Good', 'Bad', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model
                                    .buildingpaintingconditionValueController2 ??=
                                FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
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
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Lift/ Staircase',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Excellent', 'Good', 'Bad', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model.liftStaircaseValueController2 ??=
                                FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
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
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Building condition',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Excellent', 'Good', 'Bad', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller:
                                _model.buildingconditionValueController2 ??=
                                    FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
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
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Flooring condition',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Excellent', 'Good', 'Bad', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller:
                                _model.flooringconditionValueController ??=
                                    FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
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
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Fire exits',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Excellent', 'Good', 'Bad', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model.fireexitsValueController2 ??=
                                FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
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
                ),
                theme: ExpandableThemeData(
                  tapHeaderToExpand: true,
                  tapBodyToExpand: false,
                  tapBodyToCollapse: false,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  hasIcon: true,
                  expandIcon: Icons.add_outlined,
                  collapseIcon: FontAwesomeIcons.minus,
                  iconSize: 20.0,
                  iconColor: FlutterFlowTheme.of(context).primaryBackground,
                  iconPadding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
