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
import 'pi_amenities_model.dart';
export 'pi_amenities_model.dart';

class PiAmenitiesWidget extends StatefulWidget {
  const PiAmenitiesWidget({super.key});

  @override
  State<PiAmenitiesWidget> createState() => _PiAmenitiesWidgetState();
}

class _PiAmenitiesWidgetState extends State<PiAmenitiesWidget> {
  late PiAmenitiesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PiAmenitiesModel());

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
            color: Color(0xFFCCE495),
            child: ExpandableNotifier(
              controller: _model.expandableExpandableController1,
              child: ExpandablePanel(
                header: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Container(
                    height: 57.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFE8F3CF),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if ((_model.playGroundOrRecreationalAreasValue !=
                                      null &&
                                  _model.playGroundOrRecreationalAreasValue !=
                                      '') &&
                              (_model.heatingandairconditioningValue != null &&
                                  _model.heatingandairconditioningValue !=
                                      '') &&
                              (_model.kitchenappliancesValue != null &&
                                  _model.kitchenappliancesValue != '') &&
                              (_model.internetaccessValue != null &&
                                  _model.internetaccessValue != '') &&
                              (_model.petfriendlyValue != null &&
                                  _model.petfriendlyValue != '') &&
                              (_model.laundryfacilitiesValue != null &&
                                  _model.laundryfacilitiesValue != '') &&
                              (_model.parkingspaceValue != null &&
                                  _model.parkingspaceValue != '') &&
                              (_model.beachorpoolaccessValue != null &&
                                  _model.beachorpoolaccessValue != ''))
                            Container(
                              width: 28.0,
                              height: 28.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: SvgPicture.asset(
                                'assets/images/Group_1707477795.svg',
                                fit: BoxFit.contain,
                              ),
                            ),
                          if (!((_model.playGroundOrRecreationalAreasValue !=
                                          null &&
                                      _model.playGroundOrRecreationalAreasValue !=
                                          '') &&
                                  (_model.heatingandairconditioningValue !=
                                          null &&
                                      _model.heatingandairconditioningValue !=
                                          '') &&
                                  (_model.kitchenappliancesValue != null &&
                                      _model.kitchenappliancesValue != '') &&
                                  (_model.internetaccessValue != null &&
                                      _model.internetaccessValue != '') &&
                                  (_model.petfriendlyValue != null &&
                                      _model.petfriendlyValue != '') &&
                                  (_model.laundryfacilitiesValue != null &&
                                      _model.laundryfacilitiesValue != '') &&
                                  (_model.parkingspaceValue != null &&
                                      _model.parkingspaceValue != '') &&
                                  (_model.beachorpoolaccessValue != null &&
                                      _model.beachorpoolaccessValue != '')) &&
                              responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                            CircularPercentIndicator(
                              percent: (_model.playGroundOrRecreationalAreasValue !=
                                              null &&
                                          _model.playGroundOrRecreationalAreasValue !=
                                              '') ||
                                      (_model.heatingandairconditioningValue !=
                                              null &&
                                          _model.heatingandairconditioningValue !=
                                              '') ||
                                      (_model.kitchenappliancesValue != null &&
                                          _model.kitchenappliancesValue !=
                                              '') ||
                                      (_model.internetaccessValue != null &&
                                          _model.internetaccessValue != '') ||
                                      (_model.petfriendlyValue != null &&
                                          _model.petfriendlyValue != '') ||
                                      (_model.laundryfacilitiesValue != null &&
                                          _model.laundryfacilitiesValue !=
                                              '') ||
                                      (_model.parkingspaceValue != null &&
                                          _model.parkingspaceValue != '') ||
                                      (_model.beachorpoolaccessValue != null &&
                                          _model.beachorpoolaccessValue != '')
                                  ? 0.45
                                  : 0.0,
                              radius: 14.0,
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
                                    text: 'Amenities',
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
                ),
                collapsed: Container(),
                expanded: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFFCFEF9),
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
                                'Kitchen appliances',
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
                                  options: ['Yes', 'No'].toList(),
                                  onChanged: (val) => setState(() {}),
                                  controller: _model
                                          .kitchenAppliancesValueController ??=
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
                                  'Heating and air conditioning systems',
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
                                          .heatingAndAirConditioningSystemsValueController ??=
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
                                  'Parking space',
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
                                      _model.parkingSpaceValueController ??=
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Playground or recreational areas',
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
                                          .playGroundOrRecreationalAreasValueController ??=
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
                                'Laundry facilities',
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
                                  options: ['Yes', 'No'].toList(),
                                  onChanged: (val) => setState(() {}),
                                  controller: _model
                                          .laundryFacilitiesValueController ??=
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
                                  'Internet access',
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
                                      _model.internetAccessValueController ??=
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
                                  'Pet friendly',
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
                                      _model.petFriendlyValueController ??=
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Beach or pool access',
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
                                          .beachOrPoolaccessValueController ??=
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
                                  toggleable: false,
                                  horizontalAlignment:
                                      WrapAlignment.spaceEvenly,
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
            color: Color(0xFFCBE495),
            child: ExpandableNotifier(
              controller: _model.expandableExpandableController2,
              child: ExpandablePanel(
                header: Container(
                  height: 57.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFE8F3CF),
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
                            color: Color(0xFFB0D75C),
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
                          if ((_model.playgroundorrecreationalareas2Value !=
                                      null &&
                                  _model.playgroundorrecreationalareas2Value !=
                                      '') &&
                              (_model.heatingandairconditioningValue != null &&
                                  _model.heatingandairconditioningValue !=
                                      '') &&
                              (_model.kitchenappliancesValue != null &&
                                  _model.kitchenappliancesValue != '') &&
                              (_model.internetaccessValue != null &&
                                  _model.internetaccessValue != '') &&
                              (_model.petfriendlyValue != null &&
                                  _model.petfriendlyValue != '') &&
                              (_model.laundryfacilitiesValue != null &&
                                  _model.laundryfacilitiesValue != '') &&
                              (_model.parkingspaceValue != null &&
                                  _model.parkingspaceValue != '') &&
                              (_model.beachorpoolaccessValue != null &&
                                  _model.beachorpoolaccessValue != ''))
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
                          if (!((_model.playgroundorrecreationalareas2Value !=
                                          null &&
                                      _model.playgroundorrecreationalareas2Value !=
                                          '') &&
                                  (_model.heatingandairconditioningValue !=
                                          null &&
                                      _model.heatingandairconditioningValue !=
                                          '') &&
                                  (_model.kitchenappliancesValue != null &&
                                      _model.kitchenappliancesValue != '') &&
                                  (_model.internetaccessValue != null &&
                                      _model.internetaccessValue != '') &&
                                  (_model.petfriendlyValue != null &&
                                      _model.petfriendlyValue != '') &&
                                  (_model.laundryfacilitiesValue != null &&
                                      _model.laundryfacilitiesValue != '') &&
                                  (_model.parkingspaceValue != null &&
                                      _model.parkingspaceValue != '') &&
                                  (_model.beachorpoolaccessValue != null &&
                                      _model.beachorpoolaccessValue != '')) &&
                              responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                            CircularPercentIndicator(
                              percent: (_model.playgroundorrecreationalareas2Value !=
                                              null &&
                                          _model.playgroundorrecreationalareas2Value !=
                                              '') ||
                                      (_model.heatingandairconditioningValue !=
                                              null &&
                                          _model.heatingandairconditioningValue !=
                                              '') ||
                                      (_model.kitchenappliancesValue != null &&
                                          _model.kitchenappliancesValue !=
                                              '') ||
                                      (_model.internetaccessValue != null &&
                                          _model.internetaccessValue != '') ||
                                      (_model.petfriendlyValue != null &&
                                          _model.petfriendlyValue != '') ||
                                      (_model.laundryfacilitiesValue != null &&
                                          _model.laundryfacilitiesValue !=
                                              '') ||
                                      (_model.parkingspaceValue != null &&
                                          _model.parkingspaceValue != '') ||
                                      (_model.beachorpoolaccessValue != null &&
                                          _model.beachorpoolaccessValue != '')
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
                                text: 'Amenities',
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
                    color: Color(0xFFF5F7F2),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Playground or recreational areas',
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
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model
                                    .playgroundorrecreationalareas2ValueController ??=
                                FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Work Sans',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 15.0, 0.0),
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
                            'Heating and air conditioning systems',
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
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model
                                    .heatingandairconditioningValueController ??=
                                FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Work Sans',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 15.0, 0.0),
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
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kitchen appliances',
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
                                        options: ['Yes', 'No'].toList(),
                                        onChanged: (val) => setState(() {}),
                                        controller: _model
                                                .kitchenappliancesValueController ??=
                                            FormFieldController<String>(null),
                                        optionHeight: 20.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Work Sans',
                                              letterSpacing: 0.0,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 15.0, 0.0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Internet access',
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
                                        controller: _model
                                                .internetaccessValueController ??=
                                            FormFieldController<String>(null),
                                        optionHeight: 20.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Work Sans',
                                              letterSpacing: 0.0,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 15.0, 0.0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Pet friendly',
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
                                        controller: _model
                                                .petfriendlyValueController ??=
                                            FormFieldController<String>(null),
                                        optionHeight: 20.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Work Sans',
                                              letterSpacing: 0.0,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 15.0, 0.0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
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
                              ),
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Laundry facilities',
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
                                        options: ['Yes', 'No'].toList(),
                                        onChanged: (val) => setState(() {}),
                                        controller: _model
                                                .laundryfacilitiesValueController ??=
                                            FormFieldController<String>(null),
                                        optionHeight: 20.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Work Sans',
                                              letterSpacing: 0.0,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 15.0, 0.0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Parking space',
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
                                        controller: _model
                                                .parkingspaceValueController ??=
                                            FormFieldController<String>(null),
                                        optionHeight: 20.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Work Sans',
                                              letterSpacing: 0.0,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 15.0, 0.0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Beach or pool access',
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
                                        controller: _model
                                                .beachorpoolaccessValueController ??=
                                            FormFieldController<String>(null),
                                        optionHeight: 20.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Work Sans',
                                              letterSpacing: 0.0,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 15.0, 0.0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
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
                  iconSize: 24.0,
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
