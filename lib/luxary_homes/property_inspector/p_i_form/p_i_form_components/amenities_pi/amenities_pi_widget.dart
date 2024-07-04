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
import 'amenities_pi_model.dart';
export 'amenities_pi_model.dart';

class AmenitiesPiWidget extends StatefulWidget {
  const AmenitiesPiWidget({super.key});

  @override
  State<AmenitiesPiWidget> createState() => _AmenitiesPiWidgetState();
}

class _AmenitiesPiWidgetState extends State<AmenitiesPiWidget> {
  late AmenitiesPiModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AmenitiesPiModel());

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
                          text: 'Amenities',
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
                          'Kitchen appliances',
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
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller:
                                _model.kitchenAppliancesValueController ??=
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
                            'Heating and air conditioning systems',
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
                            controller: _model
                                    .heatingAndAirConditioningSystemsValueController ??=
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
                            'Parking space',
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
                            controller: _model.parkingSpaceValueController ??=
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
                            horizontalAlignment: WrapAlignment.spaceEvenly,
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
                            controller: _model
                                    .playGroundOrRecreationalAreasValueController ??=
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
                            horizontalAlignment: WrapAlignment.spaceEvenly,
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
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller:
                                _model.laundryFacilitiesValueController ??=
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
                            'Internet access',
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
                            controller: _model.internetAccessValueController ??=
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
                            'Pet friendly',
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
                            controller: _model.petFriendlyValueController ??=
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
                            horizontalAlignment: WrapAlignment.spaceEvenly,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Text(
                            'Pool access',
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
                            controller: _model.poolAccessValueController ??=
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
                            horizontalAlignment: WrapAlignment.spaceEvenly,
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
