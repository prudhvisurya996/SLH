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
import 'at_maintenance_model.dart';
export 'at_maintenance_model.dart';

class AtMaintenanceWidget extends StatefulWidget {
  const AtMaintenanceWidget({super.key});

  @override
  State<AtMaintenanceWidget> createState() => _AtMaintenanceWidgetState();
}

class _AtMaintenanceWidgetState extends State<AtMaintenanceWidget> {
  late AtMaintenanceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AtMaintenanceModel());

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
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Maintenance and Durability',
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Smoke detectors',
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
                                      _model.smokeDetectorsValueController ??=
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
                                  'Fire extinguishers',
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
                                          .fireExtinguishersValueController ??=
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
                                  'Security gaurd',
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
                                      _model.securitygaurdValueController1 ??=
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
                                  'CCTV',
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
                                  controller: _model.cctvValueController1 ??=
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
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Carbon monoxide detectors',
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
                                  controller: _model
                                          .carbonmonoxideDetectorValueController ??=
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
                                  'Handrails and staircases',
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
                                          .handrollsAndStaircasesValueController ??=
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
                                  'Digital door lock',
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
                                      _model.digitaldoorlockValueController1 ??=
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
            color: Color(0x4CE3735C),
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
                          text: 'Maintenance and Durability ',
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
                    textAlign: TextAlign.start,
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xB2FFFFFF),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Smoke detectors',
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
                            controller: _model.smokedetectorsValueController ??=
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
                            'Carbon monoxide detectors',
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
                                    .carbonmonoxidedetectorsValueController ??=
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
                            'Fire extinguishers',
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
                                _model.fireextinguishersValueController ??=
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
                            'Handrails and staircases',
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
                                _model.handrailsandstaircasesValueController ??=
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
                                    'Digital door lock',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowRadioButton(
                                      options: ['Yes', 'No'].toList(),
                                      onChanged: (val) => setState(() {}),
                                      controller: _model
                                              .digitaldoorlockValueController2 ??=
                                          FormFieldController<String>(null),
                                      optionHeight: 20.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      textPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 30.0, 0.0),
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
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CCTV',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowRadioButton(
                                      options: ['Yes', 'No'].toList(),
                                      onChanged: (val) => setState(() {}),
                                      controller:
                                          _model.cctvValueController2 ??=
                                              FormFieldController<String>(null),
                                      optionHeight: 20.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      textPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 30.0, 0.0),
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
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Security gaurd',
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
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model.securitygaurdValueController2 ??=
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
                  iconSize: 24.0,
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
