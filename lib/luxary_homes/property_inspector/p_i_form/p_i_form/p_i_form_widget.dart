import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/interior_inspection/interior_inspection_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/additional_comments_notes/additional_comments_notes_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/amenities_pi/amenities_pi_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/business_compliances/business_compliances_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/doc_verification/doc_verification_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/exterior_inspection/exterior_inspection_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/property_information/property_information_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/safetyand_compliance/safetyand_compliance_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/upload_images/upload_images_widget.dart';
import '/luxary_homes/property_inspector/pi_property_success/pi_property_success_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'p_i_form_model.dart';
export 'p_i_form_model.dart';

class PIFormWidget extends StatefulWidget {
  const PIFormWidget({super.key});

  @override
  State<PIFormWidget> createState() => _PIFormWidgetState();
}

class _PIFormWidgetState extends State<PIFormWidget> {
  late PIFormModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PIFormModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ),
            child: FutureBuilder<ApiCallResponse>(
              future: MicroserviceExternalHostGroup
                  .pIDashboardPropertyDetailViewCall
                  .call(
                reviewId: FFAppState().PIdetailView.reviewId,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: SpinKitPulse(
                        color: FlutterFlowTheme.of(context).primary,
                        size: 40.0,
                      ),
                    ),
                  );
                }
                final columnPIDashboardPropertyDetailViewResponse =
                    snapshot.data!;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.commonTopBarModel,
                      updateCallback: () => setState(() {}),
                      child: CommonTopBarWidget(
                        showSearchFilter: false,
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            80.0, 25.0, 80.0, 10.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 25.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        fillColor: Color(0x4CBBD1EA),
                                        icon: Icon(
                                          Icons.chevron_left,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 30.0,
                                        ),
                                        onPressed: () async {
                                          context.safePop();
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Property inspection form',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        'Inspection Started Date',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: '*',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Container(
                                              width: 300.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      'dd-MM-yyyy',
                                                      functions
                                                          .strToDateTimeConversion(
                                                              getJsonField(
                                                        columnPIDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.taskAssignedDate''',
                                                      ).toString())),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Container(
                                                width: 350.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'dd/mm/yyyy',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/calender_img.svg',
                                                          width: 20.0,
                                                          height: 22.0,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
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
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        'Property inspector name',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: '*',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Container(
                                                width: 350.0,
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController,
                                                  focusNode:
                                                      _model.textFieldFocusNode,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  validator: _model
                                                      .textControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Container(
                                              width: 300.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  getJsonField(
                                                    columnPIDashboardPropertyDetailViewResponse
                                                        .jsonBody,
                                                    r'''$.assignedToUserName''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
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
                                    0.0, 24.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: wrapWithModel(
                                    model: _model.propertyInformationModel,
                                    updateCallback: () => setState(() {}),
                                    child: PropertyInformationWidget(
                                      country: getJsonField(
                                        columnPIDashboardPropertyDetailViewResponse
                                            .jsonBody,
                                        r'''$.country''',
                                      ).toString(),
                                      title: getJsonField(
                                        columnPIDashboardPropertyDetailViewResponse
                                            .jsonBody,
                                        r'''$.title''',
                                      ).toString(),
                                      propertyType: getJsonField(
                                        columnPIDashboardPropertyDetailViewResponse
                                            .jsonBody,
                                        r'''$.propertyType''',
                                      ).toString(),
                                      flatNo: getJsonField(
                                        columnPIDashboardPropertyDetailViewResponse
                                            .jsonBody,
                                        r'''$.plotNo''',
                                      ).toString(),
                                      nearbyLandmark: getJsonField(
                                        columnPIDashboardPropertyDetailViewResponse
                                            .jsonBody,
                                        r'''$.landmark''',
                                      ).toString(),
                                      streetAddress: getJsonField(
                                        columnPIDashboardPropertyDetailViewResponse
                                            .jsonBody,
                                        r'''$.street''',
                                      ).toString(),
                                      locality: getJsonField(
                                        columnPIDashboardPropertyDetailViewResponse
                                            .jsonBody,
                                        r'''$.locality''',
                                      ).toString(),
                                      city: getJsonField(
                                        columnPIDashboardPropertyDetailViewResponse
                                            .jsonBody,
                                        r'''$.city''',
                                      ).toString(),
                                      state: getJsonField(
                                        columnPIDashboardPropertyDetailViewResponse
                                            .jsonBody,
                                        r'''$.state''',
                                      ).toString(),
                                      pinCode: getJsonField(
                                        columnPIDashboardPropertyDetailViewResponse
                                            .jsonBody,
                                        r'''$.zipcode''',
                                      ).toString(),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.docVerificationModel,
                                    updateCallback: () => setState(() {}),
                                    child: DocVerificationWidget(
                                      docURLS: getJsonField(
                                        columnPIDashboardPropertyDetailViewResponse
                                            .jsonBody,
                                        r'''$.fileURLs''',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.exteriorInspectionModel,
                                    updateCallback: () => setState(() {}),
                                    child: ExteriorInspectionWidget(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.interiorInspectionModel,
                                    updateCallback: () => setState(() {}),
                                    child: InteriorInspectionWidget(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.safetyandComplianceModel,
                                    updateCallback: () => setState(() {}),
                                    child: SafetyandComplianceWidget(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.amenitiesPiModel,
                                    updateCallback: () => setState(() {}),
                                    child: AmenitiesPiWidget(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.businessCompliancesModel,
                                    updateCallback: () => setState(() {}),
                                    child: BusinessCompliancesWidget(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.additionalCommentsNotesModel,
                                    updateCallback: () => setState(() {}),
                                    child: AdditionalCommentsNotesWidget(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.uploadImagesModel,
                                    updateCallback: () => setState(() {}),
                                    child: UploadImagesWidget(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: Text(
                                        'Date:',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: 200.0,
                                      height: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            dateTimeFormat('dd-MM-yyyy',
                                                getCurrentTimestamp),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Text(
                                  'Thank you for completing the property inspection form. Please ensure all necessary areas are inspected thoroughly and any issues are documented accurately. If you have any questions or require further assistance, please don\'t hesitate to contact us.',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Divider(
                                height: 130.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: double.infinity,
                        height: 75.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 60.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.safePop();
                                },
                                child: Text(
                                  'Back',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Builder(
                              builder: (context) => FFButtonWidget(
                                onPressed: () async {
                                  var _shouldSetState = false;
                                  _model.feedbackRTresponse =
                                      await RefreshTokenAPICall.call(
                                    clientId: FFAppConstants.clientId,
                                    clientSecret: FFAppConstants.clientSecret,
                                    grantType: FFAppConstants.refreshGrantType,
                                    refreshToken: FFAppState().refreshToken,
                                  );
                                  _shouldSetState = true;
                                  if ((_model.feedbackRTresponse?.succeeded ??
                                      true)) {
                                    setState(() {
                                      FFAppState().accessToken = getJsonField(
                                        (_model.feedbackRTresponse?.jsonBody ??
                                            ''),
                                        r'''$.access_token''',
                                      ).toString();
                                      FFAppState().refreshToken = getJsonField(
                                        (_model.feedbackRTresponse?.jsonBody ??
                                            ''),
                                        r'''$.refresh_token''',
                                      ).toString();
                                    });
                                    _model.piSubmitFormFeedbackResp =
                                        await LiferayBaseUrlGroup
                                            .pISubmitFeedbackCall
                                            .call(
                                      accessToken: FFAppState().accessToken,
                                      reviewId:
                                          FFAppState().PIdetailView.reviewId,
                                      articleId: getJsonField(
                                        columnPIDashboardPropertyDetailViewResponse
                                            .jsonBody,
                                        r'''$.articleId''',
                                      ).toString(),
                                      fileArrayJson: functions.getPiFilesArray(
                                          functions
                                              .getFileNames(_model
                                                  .uploadImagesModel
                                                  .uploadImages
                                                  .toList())
                                              .toList(),
                                          'additionalFile',
                                          _model.docVerificationModel
                                              .additionalDocId,
                                          'propertyOwnerPicture',
                                          _model.docVerificationModel
                                              .uploadedLocalFile),
                                      file1: functions
                                          .refillFiles(_model
                                              .uploadImagesModel.uploadImages
                                              .toList())
                                          .first,
                                      file2: functions.refillFiles(_model
                                          .uploadImagesModel.uploadImages
                                          .toList())[1],
                                      file3: functions.refillFiles(_model
                                          .uploadImagesModel.uploadImages
                                          .toList())[2],
                                      file4: functions.refillFiles(_model
                                          .uploadImagesModel.uploadImages
                                          .toList())[3],
                                      file5: functions.refillFiles(_model
                                          .uploadImagesModel.uploadImages
                                          .toList())[4],
                                      feedbackJson: functions
                                          .collectPIFeedbackDetailsCopy(
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.taskAssignedDate''',
                                              ).toString(),
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.assignedToUserName''',
                                              ).toString(),
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.title''',
                                              ).toString(),
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.country''',
                                              ).toString(),
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.title''',
                                              ).toString(),
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.propertyType''',
                                              ).toString(),
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.plotNo''',
                                              ).toString(),
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.landmark''',
                                              ).toString(),
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.street''',
                                              ).toString(),
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.locality''',
                                              ).toString(),
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.city''',
                                              ).toString(),
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.state''',
                                              ).toString(),
                                              getJsonField(
                                                columnPIDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.zipcode''',
                                              ).toString(),
                                              _model
                                                  .propertyInformationModel
                                                  .propertySizeSqftTextController
                                                  .text,
                                              _model.propertyInformationModel.noOfBedRooms
                                                  ?.toString(),
                                              _model.propertyInformationModel
                                                  .noOfBathRooms
                                                  ?.toString(),
                                              _model.propertyInformationModel.otherRooms
                                                  ?.toString(),
                                              _model.docVerificationModel
                                                  .userPersonalDocumentValue,
                                              _model.docVerificationModel
                                                  .propertyDocumentValue,
                                              _model.exteriorInspectionModel
                                                  .roofConditionValue,
                                              _model.exteriorInspectionModel
                                                  .windowsandDoorsValue,
                                              _model.exteriorInspectionModel
                                                  .drivewayandsidewalksValue,
                                              _model.exteriorInspectionModel
                                                  .buildingpaintingconditionValue,
                                              _model.exteriorInspectionModel
                                                  .flooringConditionValue,
                                              _model.exteriorInspectionModel
                                                  .fireexitsValue,
                                              _model.exteriorInspectionModel
                                                  .wallsandSidingValue,
                                              _model.exteriorInspectionModel
                                                  .foundationandstructureValue,
                                              _model.exteriorInspectionModel.drainagesystemValue,
                                              _model.exteriorInspectionModel.buildingconditionValue,
                                              _model.exteriorInspectionModel.liftStaircaseValue,
                                              _model.interiorInspectionModel.flooringValue,
                                              _model.interiorInspectionModel.wallsAndCeilingsValue,
                                              _model.interiorInspectionModel.doorsAndWindowsValue,
                                              _model.interiorInspectionModel.plumbingsystemsValue,
                                              _model.interiorInspectionModel.electricalSystemValue,
                                              _model.interiorInspectionModel.bathroomfixturesValue,
                                              _model.interiorInspectionModel.hVACsystemsValue,
                                              _model.interiorInspectionModel.customizableSpaceValue,
                                              _model.interiorInspectionModel.noOfBalconies,
                                              _model.interiorInspectionModel.noOfDoors,
                                              _model.interiorInspectionModel.noOfFans,
                                              _model.interiorInspectionModel.noOfLights,
                                              _model.interiorInspectionModel.noOfWashrooms,
                                              _model.interiorInspectionModel.noOfWashbasins,
                                              _model.interiorInspectionModel.noOfShowers,
                                              _model.safetyandComplianceModel.smokeDetectorsValue,
                                              _model.safetyandComplianceModel.carbonmonoxideDetectorValue,
                                              _model.safetyandComplianceModel.fireExtinguishersValue,
                                              _model.safetyandComplianceModel.securitygaurdValue,
                                              _model.safetyandComplianceModel.handrollsAndStaircasesValue,
                                              _model.safetyandComplianceModel.digitaldoorlockValue,
                                              _model.safetyandComplianceModel.cctvValue,
                                              _model.amenitiesPiModel.kitchenAppliancesValue,
                                              _model.amenitiesPiModel.heatingAndAirConditioningSystemsValue,
                                              _model.amenitiesPiModel.parkingSpaceValue,
                                              _model.amenitiesPiModel.playGroundOrRecreationalAreasValue,
                                              _model.amenitiesPiModel.laundryFacilitiesValue,
                                              _model.amenitiesPiModel.internetAccessValue,
                                              _model.amenitiesPiModel.petFriendlyValue,
                                              _model.amenitiesPiModel.poolAccessValue,
                                              _model.businessCompliancesModel.propertyLocationFallsUnderValue,
                                              _model.businessCompliancesModel.propertyAreaTypeValue,
                                              _model.businessCompliancesModel.propertyMaintenanceValue,
                                              _model.businessCompliancesModel.transportationFeasibilityValue,
                                              _model.businessCompliancesModel.pricingReasonableToTheAreaValue,
                                              _model.businessCompliancesModel.localMarketRentPriceTextController.text,
                                              _model.businessCompliancesModel.publicTransportFrequencyValue,
                                              _model.businessCompliancesModel.legalIssuesValue,
                                              _model.businessCompliancesModel.buninessFeasibilityValue,
                                              _model.additionalCommentsNotesModel.additionalCommentsTextController.text,
                                              getCurrentTimestamp.toString()),
                                      propertyOwnerPicture: _model
                                          .docVerificationModel
                                          .uploadPropertyOwnerPic,
                                      additionalFile: _model
                                          .docVerificationModel.additionalDocId,
                                    );
                                    _shouldSetState = true;
                                    if ((_model.piSubmitFormFeedbackResp
                                            ?.succeeded ??
                                        true)) {
                                      await showDialog(
                                        barrierDismissible: false,
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () => _model.unfocusNode
                                                      .canRequestFocus
                                                  ? FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode)
                                                  : FocusScope.of(context)
                                                      .unfocus(),
                                              child: PiPropertySuccessWidget(
                                                message:
                                                    'Feedback Form Submitted Successfully!',
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));

                                      if (_shouldSetState) setState(() {});
                                      return;
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Info'),
                                            content: Text(
                                                'Few fields are missing out there!'),
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
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }
                                  } else {
                                    FFAppState().update(() {
                                      FFAppState().hostAddressDetail =
                                          HostAddressDetailsStruct
                                              .fromSerializableMap(jsonDecode(
                                                  '{\"availability\":\"[]\"}'));
                                      FFAppState().propertyType = jsonDecode(
                                          '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                                      FFAppState().basicDetailsBeds = 1;
                                      FFAppState().basicDetailsGuests = 1;
                                      FFAppState().basicDetailsBathrooms = 1;
                                      FFAppState().propertyBasicData =
                                          BasicDetailsStruct();
                                      FFAppState().selectedAMNames = [];
                                      FFAppState().tellAboutYourProperty =
                                          TellYourPropertyStruct();
                                      FFAppState().webHostStepIndex = 0;
                                      FFAppState().SavedRoute = '';
                                      FFAppState().propertyPrice = 0;
                                      FFAppState().basicDetailsBedrooms = 1;
                                      FFAppState().SelectedAmenities = [];
                                      FFAppState().webHostSaveRoute = 0;
                                      FFAppState().accessToken = '';
                                      FFAppState().refreshToken = '';
                                      FFAppState().exHostAcceptTC = false;
                                    });
                                    await showDialog(
                                      barrierColor: Color(0xCC000D3E),
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: GestureDetector(
                                            onTap: () => _model
                                                    .unfocusNode.canRequestFocus
                                                ? FocusScope.of(context)
                                                    .requestFocus(
                                                        _model.unfocusNode)
                                                : FocusScope.of(context)
                                                    .unfocus(),
                                            child: Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.9,
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.3,
                                              child:
                                                  PhoneLoginComponentWidget(),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) setState(() {});
                                },
                                text: 'Submit',
                                options: FFButtonOptions(
                                  width: 343.0,
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
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
