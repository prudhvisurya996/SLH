import '/flutter_flow/flutter_flow_icon_button.dart';
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
import 'pi_interior_inspection_model.dart';
export 'pi_interior_inspection_model.dart';

class PiInteriorInspectionWidget extends StatefulWidget {
  const PiInteriorInspectionWidget({super.key});

  @override
  State<PiInteriorInspectionWidget> createState() =>
      _PiInteriorInspectionWidgetState();
}

class _PiInteriorInspectionWidgetState
    extends State<PiInteriorInspectionWidget> {
  late PiInteriorInspectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PiInteriorInspectionModel());

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
    return SingleChildScrollView(
      child: Column(
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
              color: Color(0xFF688B9F),
              child: ExpandableNotifier(
                controller: _model.expandableExpandableController1,
                child: ExpandablePanel(
                  header: Container(
                    height: 57.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFBACAD3),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if ((_model.flooringValue2 != null &&
                                  _model.flooringValue2 != '') &&
                              (_model.wallsandceilingsValue != null &&
                                  _model.wallsandceilingsValue != '') &&
                              (_model.doorsWindowsValue != null &&
                                  _model.doorsWindowsValue != '') &&
                              (_model.electricalsystemValue != null &&
                                  _model.electricalsystemValue != '') &&
                              (_model.plumbingsystemValue != null &&
                                  _model.plumbingsystemValue != '') &&
                              (_model.bathroomfixturesValue != null &&
                                  _model.bathroomfixturesValue != '') &&
                              (_model.hVACsystemsValue != null &&
                                  _model.hVACsystemsValue != '') &&
                              (_model.customizablespaceValue != null &&
                                  _model.customizablespaceValue != ''))
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
                          if (!((_model.flooringValue2 != null &&
                                      _model.flooringValue2 != '') &&
                                  (_model.wallsandceilingsValue != null &&
                                      _model.wallsandceilingsValue != '') &&
                                  (_model.doorsWindowsValue != null &&
                                      _model.doorsWindowsValue != '') &&
                                  (_model.electricalsystemValue != null &&
                                      _model.electricalsystemValue != '') &&
                                  (_model.plumbingsystemValue != null &&
                                      _model.plumbingsystemValue != '') &&
                                  (_model.bathroomfixturesValue != null &&
                                      _model.bathroomfixturesValue != '') &&
                                  (_model.hVACsystemsValue != null &&
                                      _model.hVACsystemsValue != '') &&
                                  (_model.customizablespaceValue != null &&
                                      _model.customizablespaceValue != '')) &&
                              responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                            CircularPercentIndicator(
                              percent: (_model.flooringValue2 != null &&
                                          _model.flooringValue2 != '') ||
                                      (_model.wallsandceilingsValue != null &&
                                          _model.wallsandceilingsValue != '') ||
                                      (_model.doorsWindowsValue != null &&
                                          _model.doorsWindowsValue != '') ||
                                      (_model.electricalsystemValue != null &&
                                          _model.electricalsystemValue != '') ||
                                      (_model.plumbingsystemValue != null &&
                                          _model.plumbingsystemValue != '') ||
                                      (_model.bathroomfixturesValue != null &&
                                          _model.bathroomfixturesValue != '') ||
                                      (_model.hVACsystemsValue != null &&
                                          _model.hVACsystemsValue != '') ||
                                      (_model.customizablespaceValue != null &&
                                          _model.customizablespaceValue != '')
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Interior Inspection',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Work Sans',
                                          fontSize: 18.0,
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
                  ),
                  collapsed: Container(),
                  expanded: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F8F9),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          50.0, 24.0, 50.0, 24.0),
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
                                            fontFamily: 'Work Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: FlutterFlowRadioButton(
                                        options: [
                                          'Bad',
                                          'Good',
                                          'Excellent',
                                          'N/A'
                                        ].toList(),
                                        onChanged: (val) => setState(() {}),
                                        controller: _model
                                                .flooringValueController1 ??=
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
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 50.0, 0.0),
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Text(
                                        'Doors & Windows',
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
                                        options: [
                                          'Bad',
                                          'Good',
                                          'Excellent',
                                          'N/A'
                                        ].toList(),
                                        onChanged: (val) => setState(() {}),
                                        controller: _model
                                                .doorsAndWindowsValueController ??=
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
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 50.0, 0.0),
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Text(
                                        'Plumbing system',
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
                                        options: [
                                          'Bad',
                                          'Good',
                                          'Excellent',
                                          'N/A'
                                        ].toList(),
                                        onChanged: (val) => setState(() {}),
                                        controller: _model
                                                .plumbingsystemsValueController ??=
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
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 50.0, 0.0),
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Text(
                                        'HVAC system',
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
                                        options: [
                                          'Bad',
                                          'Good',
                                          'Excellent',
                                          'N/A'
                                        ].toList(),
                                        onChanged: (val) => setState(() {}),
                                        controller: _model
                                                .hvacSystemsValueController ??=
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
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 50.0, 0.0),
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
                                            fontFamily: 'Work Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: FlutterFlowRadioButton(
                                        options: [
                                          'Bad',
                                          'Good',
                                          'Excellent',
                                          'N/A'
                                        ].toList(),
                                        onChanged: (val) => setState(() {}),
                                        controller: _model
                                                .wallsAndCeilingsValueController ??=
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
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 50.0, 0.0),
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Text(
                                        'Electrical system',
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
                                        options: [
                                          'Bad',
                                          'Good',
                                          'Excellent',
                                          'N/A'
                                        ].toList(),
                                        onChanged: (val) => setState(() {}),
                                        controller: _model
                                                .electricalSystemValueController ??=
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
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 50.0, 0.0),
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Text(
                                        'Bathroom fixtures',
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
                                        options: [
                                          'Bad',
                                          'Good',
                                          'Excellent',
                                          'N/A'
                                        ].toList(),
                                        onChanged: (val) => setState(() {}),
                                        controller: _model
                                                .bathroomFixturesValueController ??=
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
                                                0.0, 0.0, 50.0, 0.0),
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Text(
                                        'Customizable space(partitioning options)',
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
                                        controller: _model
                                                .customizableSpaceValueController ??=
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
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 50.0, 0.0),
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
                                            WrapAlignment.spaceEvenly,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
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
                                            fontFamily: 'Work Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.remove,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed:
                                                (_model.noOfBalconies == 0)
                                                    ? null
                                                    : () async {
                                                        _model.noOfBalconies =
                                                            _model.noOfBalconies! +
                                                                -1;
                                                        setState(() {});
                                                      },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.noOfBalconies
                                                    ?.toString(),
                                                '0',
                                              ),
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
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed:
                                                (_model.noOfBalconies == 20)
                                                    ? null
                                                    : () async {
                                                        _model.noOfBalconies =
                                                            _model.noOfBalconies! +
                                                                1;
                                                        setState(() {});
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
                                              fontFamily: 'Work Sans',
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.remove,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed:
                                                (_model.noOfWashrooms == 0)
                                                    ? null
                                                    : () async {
                                                        _model.noOfWashrooms =
                                                            _model.noOfWashrooms! +
                                                                -1;
                                                        setState(() {});
                                                      },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.noOfWashrooms
                                                    ?.toString(),
                                                '0',
                                              ),
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
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed:
                                                (_model.noOfWashrooms == 20)
                                                    ? null
                                                    : () async {
                                                        _model.noOfWashrooms =
                                                            _model.noOfWashrooms! +
                                                                1;
                                                        setState(() {});
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
                                            fontFamily: 'Work Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.remove,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (_model.noOfDoors == 0)
                                                ? null
                                                : () async {
                                                    _model.noOfDoors =
                                                        _model.noOfDoors! + -1;
                                                    setState(() {});
                                                  },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.noOfDoors?.toString(),
                                                '0',
                                              ),
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
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (_model.noOfDoors == 20)
                                                ? null
                                                : () async {
                                                    _model.noOfDoors =
                                                        _model.noOfDoors! + 1;
                                                    setState(() {});
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
                                              fontFamily: 'Work Sans',
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.remove,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed:
                                                (_model.noOfWashbasins == 0)
                                                    ? null
                                                    : () async {
                                                        _model.noOfWashbasins =
                                                            _model.noOfWashbasins! +
                                                                -1;
                                                        setState(() {});
                                                      },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.noOfWashbasins
                                                    ?.toString(),
                                                '0',
                                              ),
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
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed:
                                                (_model.noOfWashbasins == 20)
                                                    ? null
                                                    : () async {
                                                        _model.noOfWashbasins =
                                                            _model.noOfWashbasins! +
                                                                1;
                                                        setState(() {});
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
                                            fontFamily: 'Work Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.remove,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (_model.noOfFans == 0)
                                                ? null
                                                : () async {
                                                    _model.noOfFans =
                                                        _model.noOfFans! + -1;
                                                    setState(() {});
                                                  },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.noOfFans?.toString(),
                                                '0',
                                              ),
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
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (_model.noOfFans == 20)
                                                ? null
                                                : () async {
                                                    _model.noOfFans =
                                                        _model.noOfFans! + 1;
                                                    setState(() {});
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
                                              fontFamily: 'Work Sans',
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.remove,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (_model.noOfShowers == 0)
                                                ? null
                                                : () async {
                                                    _model.noOfShowers =
                                                        _model.noOfShowers! +
                                                            -1;
                                                    setState(() {});
                                                  },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.noOfShowers?.toString(),
                                                '0',
                                              ),
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
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (_model.noOfShowers ==
                                                    20)
                                                ? null
                                                : () async {
                                                    _model.noOfShowers =
                                                        _model.noOfShowers! + 1;
                                                    setState(() {});
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
                                            fontFamily: 'Work Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.remove,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (_model.noOfLights == 0)
                                                ? null
                                                : () async {
                                                    _model.noOfLights =
                                                        _model.noOfLights! + -1;
                                                    setState(() {});
                                                  },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.noOfLights?.toString(),
                                                '0',
                                              ),
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
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (_model.noOfLights == 20)
                                                ? null
                                                : () async {
                                                    _model.noOfLights =
                                                        _model.noOfLights! + 1;
                                                    setState(() {});
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
              color: Color(0xFF678A9F),
              child: ExpandableNotifier(
                controller: _model.expandableExpandableController2,
                child: ExpandablePanel(
                  header: Container(
                    height: 57.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFBACAD3),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: Container(
                            width: 5.0,
                            height: 38.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF174C6C),
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
                            if ((_model.flooringValue2 != null &&
                                    _model.flooringValue2 != '') &&
                                (_model.wallsandceilingsValue != null &&
                                    _model.wallsandceilingsValue != '') &&
                                (_model.doorsWindowsValue != null &&
                                    _model.doorsWindowsValue != '') &&
                                (_model.electricalsystemValue != null &&
                                    _model.electricalsystemValue != '') &&
                                (_model.plumbingsystemValue != null &&
                                    _model.plumbingsystemValue != '') &&
                                (_model.bathroomfixturesValue != null &&
                                    _model.bathroomfixturesValue != '') &&
                                (_model.hVACsystemsValue != null &&
                                    _model.hVACsystemsValue != '') &&
                                (_model.customizablespaceValue != null &&
                                    _model.customizablespaceValue != ''))
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
                            if (!((_model.flooringValue2 != null &&
                                        _model.flooringValue2 != '') &&
                                    (_model.wallsandceilingsValue != null &&
                                        _model.wallsandceilingsValue != '') &&
                                    (_model.doorsWindowsValue != null &&
                                        _model.doorsWindowsValue != '') &&
                                    (_model.electricalsystemValue != null &&
                                        _model.electricalsystemValue != '') &&
                                    (_model.plumbingsystemValue != null &&
                                        _model.plumbingsystemValue != '') &&
                                    (_model.bathroomfixturesValue != null &&
                                        _model.bathroomfixturesValue != '') &&
                                    (_model.hVACsystemsValue != null &&
                                        _model.hVACsystemsValue != '') &&
                                    (_model.customizablespaceValue != null &&
                                        _model.customizablespaceValue != '')) &&
                                responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                              CircularPercentIndicator(
                                percent: (_model.flooringValue2 != null &&
                                            _model.flooringValue2 != '') ||
                                        (_model.wallsandceilingsValue != null &&
                                            _model.wallsandceilingsValue !=
                                                '') ||
                                        (_model.doorsWindowsValue != null &&
                                            _model.doorsWindowsValue != '') ||
                                        (_model.electricalsystemValue != null &&
                                            _model.electricalsystemValue !=
                                                '') ||
                                        (_model.plumbingsystemValue != null &&
                                            _model.plumbingsystemValue != '') ||
                                        (_model.bathroomfixturesValue != null &&
                                            _model.bathroomfixturesValue !=
                                                '') ||
                                        (_model.hVACsystemsValue != null &&
                                            _model.hVACsystemsValue != '') ||
                                        (_model.customizablespaceValue !=
                                                null &&
                                            _model.customizablespaceValue != '')
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
                                  text: 'Interior Inspection',
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
                    decoration: BoxDecoration(
                      color: Color(0xE6FFFFFF),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 24.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flooring',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Work Sans',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: FlutterFlowRadioButton(
                                options: ['Excellent', 'Good', 'Bad', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller: _model.flooringValueController2 ??=
                                    FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'Walls and ceilings',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                options: ['Excellent', 'Good', 'Bad', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.wallsandceilingsValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'Doors & Windows',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                options: ['Excellent', 'Good', 'Bad', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.doorsWindowsValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'Electrical system',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                options: ['Excellent', 'Good', 'Bad', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.electricalsystemValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'Plumbing system',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                options: ['Excellent', 'Good', 'Bad', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.plumbingsystemValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'Bathroom fixtures',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                options: ['Excellent', 'Good', 'Bad', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.bathroomfixturesValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'HVAC systems',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                options: ['Excellent', 'Good', 'Bad', 'N/A']
                                    .toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.hVACsystemsValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.spaceBetween,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'Customizable space(partitioning options)',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
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
                                options: ['Yes', 'No'].toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.customizablespaceValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 20.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Work Sans',
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
                                  0.0, 16.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'No. of balconies :',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Work Sans',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                                onPressed:
                                                    (_model.noOfBalconies == 0)
                                                        ? null
                                                        : () async {
                                                            _model.noOfBalconies =
                                                                _model.noOfBalconies! +
                                                                    -1;
                                                            setState(() {});
                                                          },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  _model.noOfBalconies
                                                      .toString(),
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
                                                icon: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: () async {
                                                  _model.noOfBalconies =
                                                      _model.noOfBalconies! + 1;
                                                  setState(() {});
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            'No. of lights :',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                                onPressed:
                                                    (_model.noOfLights == 0)
                                                        ? null
                                                        : () async {
                                                            _model.noOfLights =
                                                                _model.noOfLights! +
                                                                    -1;
                                                            setState(() {});
                                                          },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  _model.noOfLights.toString(),
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
                                                icon: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: () async {
                                                  _model.noOfLights =
                                                      _model.noOfLights! + 1;
                                                  setState(() {});
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            'No. of showers',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                                onPressed:
                                                    (_model.noOfShowers == 0)
                                                        ? null
                                                        : () async {
                                                            _model.noOfShowers =
                                                                _model.noOfShowers! +
                                                                    -1;
                                                            setState(() {});
                                                          },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  _model.noOfShowers.toString(),
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
                                                icon: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: () async {
                                                  _model.noOfShowers =
                                                      _model.noOfShowers! + 1;
                                                  setState(() {});
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'No. of doors :',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Work Sans',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                                onPressed:
                                                    (_model.noOfDoors == 0)
                                                        ? null
                                                        : () async {
                                                            _model.noOfDoors =
                                                                _model.noOfDoors! +
                                                                    -1;
                                                            setState(() {});
                                                          },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  _model.noOfDoors.toString(),
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
                                                icon: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: () async {
                                                  _model.noOfDoors =
                                                      _model.noOfDoors! + 1;
                                                  setState(() {});
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            'No. of fans :',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                                onPressed:
                                                    (_model.noOfFans == 0)
                                                        ? null
                                                        : () async {
                                                            _model.noOfFans =
                                                                _model.noOfFans! +
                                                                    -1;
                                                            setState(() {});
                                                          },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  _model.noOfFans.toString(),
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
                                                icon: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: () async {
                                                  _model.noOfFans =
                                                      _model.noOfFans! + 1;
                                                  setState(() {});
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            'No. of washbasins',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                                onPressed:
                                                    (_model.noOfWashbasins == 0)
                                                        ? null
                                                        : () async {
                                                            _model.noOfWashbasins =
                                                                _model.noOfWashbasins! +
                                                                    -1;
                                                            setState(() {});
                                                          },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  _model.noOfWashbasins
                                                      .toString(),
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
                                                icon: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: () async {
                                                  _model.noOfWashbasins =
                                                      _model.noOfWashbasins! +
                                                          1;
                                                  setState(() {});
                                                },
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'No. of washrooms (common/attached)',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Work Sans',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
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
                                            _model.noOfWashrooms =
                                                _model.noOfWashrooms! + -1;
                                            setState(() {});
                                          },
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      child: Text(
                                        _model.noOfWashrooms.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Work Sans',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed: () async {
                                      _model.noOfWashrooms =
                                          _model.noOfWashrooms! + 1;
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
                    iconPadding: EdgeInsets.all(12.0),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
