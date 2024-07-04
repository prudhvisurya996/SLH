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
import 'safetyand_compliance_model.dart';
export 'safetyand_compliance_model.dart';

class SafetyandComplianceWidget extends StatefulWidget {
  const SafetyandComplianceWidget({super.key});

  @override
  State<SafetyandComplianceWidget> createState() =>
      _SafetyandComplianceWidgetState();
}

class _SafetyandComplianceWidgetState extends State<SafetyandComplianceWidget> {
  late SafetyandComplianceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SafetyandComplianceModel());

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
    return Container(
      width: double.infinity,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      child: ExpandableNotifier(
        controller: _model.expandableExpandableController,
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
                          text: 'Safety and Compliance',
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
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Bad', 'Good', 'Excellent', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model.smokeDetectorsValueController ??=
                                FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
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
                            options:
                                ['Bad', 'Good', 'Excellent', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller:
                                _model.fireExtinguishersValueController ??=
                                    FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
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
                            controller: _model.securitygaurdValueController ??=
                                FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
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
                            controller: _model.cctvValueController ??=
                                FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
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
                          'Carbon monoxide detectors',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options:
                                ['Bad', 'Good', 'Excellent', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller:
                                _model.carbonmonoxideDetectorValueController ??=
                                    FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
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
                            options:
                                ['Bad', 'Good', 'Excellent', 'N/A'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller:
                                _model.handrollsAndStaircasesValueController ??=
                                    FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
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
                                _model.digitaldoorlockValueController ??=
                                    FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
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
