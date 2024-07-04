import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'pi_exterior_inspection_model.dart';
export 'pi_exterior_inspection_model.dart';

class PiExteriorInspectionWidget extends StatefulWidget {
  const PiExteriorInspectionWidget({super.key});

  @override
  State<PiExteriorInspectionWidget> createState() =>
      _PiExteriorInspectionWidgetState();
}

class _PiExteriorInspectionWidgetState
    extends State<PiExteriorInspectionWidget> {
  late PiExteriorInspectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PiExteriorInspectionModel());

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
            color: Color(0xFFFBCA7E),
            child: ExpandableNotifier(
              controller: _model.expandableExpandableController1,
              child: ExpandablePanel(
                header: Container(
                  height: 57.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFEE7C4),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if ((_model.roofConditionValue2 != null &&
                                    _model.roofConditionValue2 != '') &&
                                (_model.wallsandSidingValue2 != null &&
                                    _model.wallsandSidingValue2 != '') &&
                                (_model.windowsandDoorsValue2 != null &&
                                    _model.windowsandDoorsValue2 != '') &&
                                (_model.foundationandstructureValue2 != null &&
                                    _model.foundationandstructureValue2 !=
                                        '') &&
                                (_model.drivewayandsidewalksValue2 != null &&
                                    _model.drivewayandsidewalksValue2 != '') &&
                                (_model.drainagesystemValue2 != null &&
                                    _model.drainagesystemValue2 != '') &&
                                (_model.buildingpaintingconditionValue2 !=
                                        null &&
                                    _model.buildingpaintingconditionValue2 !=
                                        '') &&
                                (_model.liftStaircaseValue2 != null &&
                                    _model.liftStaircaseValue2 != '') &&
                                (_model.buildingconditionValue2 != null &&
                                    _model.buildingconditionValue2 != '') &&
                                (_model.flooringconditionValue != null &&
                                    _model.flooringconditionValue != '') &&
                                (_model.fireexitsValue2 != null &&
                                    _model.fireexitsValue2 != ''))
                              Container(
                                width: 30.0,
                                height: 30.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  'assets/images/Group_1707477795.svg',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            if (!((_model.roofConditionValue2 != null &&
                                        _model.roofConditionValue2 != '') &&
                                    (_model.wallsandSidingValue2 != null &&
                                        _model.wallsandSidingValue2 != '') &&
                                    (_model.windowsandDoorsValue2 != null &&
                                        _model.windowsandDoorsValue2 != '') &&
                                    (_model.foundationandstructureValue2 !=
                                            null &&
                                        _model.foundationandstructureValue2 !=
                                            '') &&
                                    (_model.drivewayandsidewalksValue2 !=
                                            null &&
                                        _model.drivewayandsidewalksValue2 !=
                                            '') &&
                                    (_model.drainagesystemValue2 != null &&
                                        _model.drainagesystemValue2 != '') &&
                                    (_model.buildingpaintingconditionValue2 !=
                                            null &&
                                        _model.buildingpaintingconditionValue2 !=
                                            '') &&
                                    (_model.liftStaircaseValue2 != null &&
                                        _model.liftStaircaseValue2 != '') &&
                                    (_model.buildingconditionValue2 != null &&
                                        _model.buildingconditionValue2 != '') &&
                                    (_model.flooringconditionValue != null &&
                                        _model.flooringconditionValue != '') &&
                                    (_model.fireexitsValue2 != null &&
                                        _model.fireexitsValue2 != '')) &&
                                responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                              CircularPercentIndicator(
                                percent: (_model.roofConditionValue2 != null &&
                                            _model.roofConditionValue2 != '') ||
                                        (_model.wallsandSidingValue2 != null &&
                                            _model.wallsandSidingValue2 !=
                                                '') ||
                                        (_model.windowsandDoorsValue2 != null &&
                                            _model.windowsandDoorsValue2 !=
                                                '') ||
                                        (_model.foundationandstructureValue2 != null &&
                                            _model.foundationandstructureValue2 !=
                                                '') ||
                                        (_model.drivewayandsidewalksValue2 != null &&
                                            _model.drivewayandsidewalksValue2 !=
                                                '') ||
                                        (_model.drainagesystemValue2 != null &&
                                            _model.drainagesystemValue2 !=
                                                '') ||
                                        (_model.buildingpaintingconditionValue2 !=
                                                null &&
                                            _model.buildingpaintingconditionValue2 !=
                                                '') ||
                                        (_model.liftStaircaseValue2 != null &&
                                            _model.liftStaircaseValue2 != '') ||
                                        (_model.buildingconditionValue2 != null &&
                                            _model.buildingconditionValue2 !=
                                                '') ||
                                        (_model.flooringconditionValue != null &&
                                            _model.flooringconditionValue !=
                                                '') ||
                                        (_model.fireexitsValue2 != null &&
                                            _model.fireexitsValue2 != '')
                                    ? 0.45
                                    : 0.0,
                                radius: 15.0,
                                lineWidth: 5.0,
                                animation: false,
                                animateFromLastPercent: true,
                                progressColor: Color(0xFF81B80B),
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Exterior Inspection',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Work Sans',
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
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Work Sans',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFCF7),
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
                                      fontFamily: 'Work Sans',
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
                                  selectedTextStyle: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
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
                                  toggleable: true,
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
                                        fontFamily: 'Work Sans',
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
                                  selectedTextStyle: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
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
                                  toggleable: true,
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
                                        fontFamily: 'Work Sans',
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
                                  selectedTextStyle: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
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
                                  toggleable: true,
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
                                        fontFamily: 'Work Sans',
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
                                  selectedTextStyle: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
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
                                  toggleable: true,
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
                                        fontFamily: 'Work Sans',
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
                                  selectedTextStyle: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
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
                                  toggleable: true,
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
                                        fontFamily: 'Work Sans',
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
                                  selectedTextStyle: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
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
                                  toggleable: true,
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
                                      fontFamily: 'Work Sans',
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
                                  selectedTextStyle: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
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
                                  toggleable: true,
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
                                        fontFamily: 'Work Sans',
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
                                  selectedTextStyle: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
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
                                  toggleable: true,
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
                                        fontFamily: 'Work Sans',
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
                                  selectedTextStyle: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
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
                                  toggleable: true,
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
                                        fontFamily: 'Work Sans',
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
                                  selectedTextStyle: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
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
                                  toggleable: true,
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
                                        fontFamily: 'Work Sans',
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
                                  selectedTextStyle: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
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
                                  toggleable: true,
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
                  expandIcon: Icons.add_outlined,
                  collapseIcon: FontAwesomeIcons.minus,
                  iconSize: 20.0,
                  iconColor: FlutterFlowTheme.of(context).primaryBackground,
                  iconPadding: EdgeInsets.all(15.0),
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
            color: Color(0xFFFBCE87),
            child: ExpandableNotifier(
              controller: _model.expandableExpandableController2,
              child: ExpandablePanel(
                header: Container(
                  height: 57.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFEEFD7),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: 5.0,
                          height: 38.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF9AE39),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(20.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if ((_model.roofConditionValue2 != null &&
                                  _model.roofConditionValue2 != '') &&
                              (_model.wallsandSidingValue2 != null &&
                                  _model.wallsandSidingValue2 != '') &&
                              (_model.windowsandDoorsValue2 != null &&
                                  _model.windowsandDoorsValue2 != '') &&
                              (_model.foundationandstructureValue2 != null &&
                                  _model.foundationandstructureValue2 != '') &&
                              (_model.drivewayandsidewalksValue2 != null &&
                                  _model.drivewayandsidewalksValue2 != '') &&
                              (_model.drainagesystemValue2 != null &&
                                  _model.drainagesystemValue2 != '') &&
                              (_model.buildingpaintingconditionValue2 != null &&
                                  _model.buildingpaintingconditionValue2 !=
                                      '') &&
                              (_model.liftStaircaseValue2 != null &&
                                  _model.liftStaircaseValue2 != '') &&
                              (_model.buildingconditionValue2 != null &&
                                  _model.buildingconditionValue2 != '') &&
                              (_model.flooringconditionValue != null &&
                                  _model.flooringconditionValue != '') &&
                              (_model.fireexitsValue2 != null &&
                                  _model.fireexitsValue2 != ''))
                            Container(
                              width: 30.0,
                              height: 30.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: SvgPicture.asset(
                                'assets/images/Group_1707477795.svg',
                                fit: BoxFit.contain,
                              ),
                            ),
                          if (!((_model.roofConditionValue2 != null &&
                                      _model.roofConditionValue2 != '') &&
                                  (_model.wallsandSidingValue2 != null &&
                                      _model.wallsandSidingValue2 != '') &&
                                  (_model.windowsandDoorsValue2 != null &&
                                      _model.windowsandDoorsValue2 != '') &&
                                  (_model.foundationandstructureValue2 !=
                                          null &&
                                      _model.foundationandstructureValue2 !=
                                          '') &&
                                  (_model.drivewayandsidewalksValue2 != null &&
                                      _model.drivewayandsidewalksValue2 !=
                                          '') &&
                                  (_model.drainagesystemValue2 != null &&
                                      _model.drainagesystemValue2 != '') &&
                                  (_model.buildingpaintingconditionValue2 !=
                                          null &&
                                      _model.buildingpaintingconditionValue2 !=
                                          '') &&
                                  (_model.liftStaircaseValue2 != null &&
                                      _model.liftStaircaseValue2 != '') &&
                                  (_model.buildingconditionValue2 != null &&
                                      _model.buildingconditionValue2 != '') &&
                                  (_model.flooringconditionValue != null &&
                                      _model.flooringconditionValue != '') &&
                                  (_model.fireexitsValue2 != null &&
                                      _model.fireexitsValue2 != '')) &&
                              responsiveVisibility(
                                context: context,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                            CircularPercentIndicator(
                              percent: (_model.roofConditionValue2 != null &&
                                          _model.roofConditionValue2 != '') ||
                                      (_model.wallsandSidingValue2 != null &&
                                          _model.wallsandSidingValue2 != '') ||
                                      (_model.windowsandDoorsValue2 != null &&
                                          _model.windowsandDoorsValue2 != '') ||
                                      (_model.foundationandstructureValue2 != null &&
                                          _model.foundationandstructureValue2 !=
                                              '') ||
                                      (_model.drivewayandsidewalksValue2 !=
                                              null &&
                                          _model.drivewayandsidewalksValue2 !=
                                              '') ||
                                      (_model.drainagesystemValue2 != null &&
                                          _model.drainagesystemValue2 != '') ||
                                      (_model.buildingpaintingconditionValue2 !=
                                              null &&
                                          _model.buildingpaintingconditionValue2 !=
                                              '') ||
                                      (_model.liftStaircaseValue2 != null &&
                                          _model.liftStaircaseValue2 != '') ||
                                      (_model.buildingconditionValue2 != null &&
                                          _model.buildingconditionValue2 !=
                                              '') ||
                                      (_model.flooringconditionValue != null &&
                                          _model.flooringconditionValue !=
                                              '') ||
                                      (_model.fireexitsValue2 != null &&
                                          _model.fireexitsValue2 != '')
                                  ? 0.45
                                  : 0.0,
                              radius: 15.0,
                              lineWidth: 5.0,
                              animation: false,
                              animateFromLastPercent: true,
                              progressColor: Color(0xFF81B80B),
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Exterior Inspection',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Work Sans',
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
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
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
                collapsed: Container(),
                expanded: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F5F0),
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
                                    fontFamily: 'Work Sans',
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
                                      fontFamily: 'Work Sans',
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
                            toggleable: true,
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
                                      fontFamily: 'Work Sans',
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
                                      fontFamily: 'Work Sans',
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
                            toggleable: true,
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
                                      fontFamily: 'Work Sans',
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
                                      fontFamily: 'Work Sans',
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
                            toggleable: true,
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
                                      fontFamily: 'Work Sans',
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
                                      fontFamily: 'Work Sans',
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
                            toggleable: true,
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
                                      fontFamily: 'Work Sans',
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
                                      fontFamily: 'Work Sans',
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
                            toggleable: true,
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
                                      fontFamily: 'Work Sans',
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
                                      fontFamily: 'Work Sans',
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
                            toggleable: true,
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
                                      fontFamily: 'Work Sans',
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
                                      fontFamily: 'Work Sans',
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
                            toggleable: true,
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
                                      fontFamily: 'Work Sans',
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
                                      fontFamily: 'Work Sans',
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
                            toggleable: true,
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
                                      fontFamily: 'Work Sans',
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
                                      fontFamily: 'Work Sans',
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
                            toggleable: true,
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
                                      fontFamily: 'Work Sans',
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
                                      fontFamily: 'Work Sans',
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
                            toggleable: true,
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
                                      fontFamily: 'Work Sans',
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
                                      fontFamily: 'Work Sans',
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
                            toggleable: true,
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
                  iconPadding: EdgeInsets.all(12.0),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
