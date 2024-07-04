import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/property_inspector/pi_additional_comments/pi_additional_comments_widget.dart';
import '/luxary_homes/property_inspector/pi_amenities/pi_amenities_widget.dart';
import '/luxary_homes/property_inspector/pi_business_compliances/pi_business_compliances_widget.dart';
import '/luxary_homes/property_inspector/pi_document_verification/pi_document_verification_widget.dart';
import '/luxary_homes/property_inspector/pi_exterior_inspection/pi_exterior_inspection_widget.dart';
import '/luxary_homes/property_inspector/pi_interior_inspection/pi_interior_inspection_widget.dart';
import '/luxary_homes/property_inspector/pi_property_information/pi_property_information_widget.dart';
import '/luxary_homes/property_inspector/pi_property_success/pi_property_success_widget.dart';
import '/luxary_homes/property_inspector/pi_safety_and_compliance/pi_safety_and_compliance_widget.dart';
import '/luxary_homes/property_inspector/pi_upload_images/pi_upload_images_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pi_form_model.dart';
export 'pi_form_model.dart';

class PiFormWidget extends StatefulWidget {
  const PiFormWidget({super.key});

  @override
  State<PiFormWidget> createState() => _PiFormWidgetState();
}

class _PiFormWidgetState extends State<PiFormWidget> {
  late PiFormModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PiFormModel());

    _model.additionalCommentsTextController ??= TextEditingController();
    _model.additionalCommentsFocusNode ??= FocusNode();

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
          child: FutureBuilder<ApiCallResponse>(
            future: MicroserviceExternalHostGroup
                .pIATDashboardPropertyDetailViewCall
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
              final columnPIATDashboardPropertyDetailViewResponse =
                  snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  wrapWithModel(
                    model: _model.commonTopBarModel,
                    updateCallback: () => setState(() {}),
                    child: CommonTopBarWidget(
                      showSearchFilter: false,
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Flexible(
                      child: Form(
                        key: _model.formKey2,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              58.0, 0.0, 55.0, 10.0),
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
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
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
                                                fontFamily: 'Work Sans',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2.0, 0.0, 2.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'Inspection Started Date',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: '*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Container(
                                                width: 300.0,
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
                                                          columnPIATDashboardPropertyDetailViewResponse
                                                              .jsonBody,
                                                          r'''$.taskAssignedDate''',
                                                        ).toString())),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
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
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'Property inspector name',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: '*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Container(
                                                width: 300.0,
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
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    getJsonField(
                                                      columnPIATDashboardPropertyDetailViewResponse
                                                          .jsonBody,
                                                      r'''$.assignedToUserName''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
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
                                      model: _model.piPropertyInformationModel1,
                                      updateCallback: () => setState(() {}),
                                      child: PiPropertyInformationWidget(
                                        country: getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
                                              .jsonBody,
                                          r'''$.country''',
                                        ).toString(),
                                        title: getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
                                              .jsonBody,
                                          r'''$.title''',
                                        ).toString(),
                                        propertyType: getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
                                              .jsonBody,
                                          r'''$.propertyType''',
                                        ).toString(),
                                        flatNo: getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
                                              .jsonBody,
                                          r'''$.plotNo''',
                                        ).toString(),
                                        nearbyLandmark: getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
                                              .jsonBody,
                                          r'''$.landmark''',
                                        ).toString(),
                                        streetAddress: getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
                                              .jsonBody,
                                          r'''$.street''',
                                        ).toString(),
                                        locality: getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
                                              .jsonBody,
                                          r'''$.locality''',
                                        ).toString(),
                                        city: getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
                                              .jsonBody,
                                          r'''$.city''',
                                        ).toString(),
                                        state: getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
                                              .jsonBody,
                                          r'''$.state''',
                                        ).toString(),
                                        pinCode: getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
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
                                      model:
                                          _model.piDocumentVerificationModel1,
                                      updateCallback: () => setState(() {}),
                                      child: PiDocumentVerificationWidget(
                                        docURLS: getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
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
                                      model: _model.piExteriorInspectionModel1,
                                      updateCallback: () => setState(() {}),
                                      child: PiExteriorInspectionWidget(),
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
                                      model: _model.piInteriorInspectionModel1,
                                      updateCallback: () => setState(() {}),
                                      child: PiInteriorInspectionWidget(),
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
                                      model: _model.piSafetyAndComplianceModel1,
                                      updateCallback: () => setState(() {}),
                                      child: PiSafetyAndComplianceWidget(),
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
                                      model: _model.piAmenitiesModel1,
                                      updateCallback: () => setState(() {}),
                                      child: PiAmenitiesWidget(),
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
                                      model: _model.piBusinessCompliancesModel1,
                                      updateCallback: () => setState(() {}),
                                      child: PiBusinessCompliancesWidget(),
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
                                      model: _model.piUploadImagesModel1,
                                      updateCallback: () => setState(() {}),
                                      child: PiUploadImagesWidget(),
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
                                      model: _model.piAdditionalCommentsModel,
                                      updateCallback: () => setState(() {}),
                                      child: PiAdditionalCommentsWidget(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 8.0, 0.0),
                                        child: Text(
                                          'Date:',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Work Sans',
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
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                          fontFamily: 'Work Sans',
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
                    ),
                  if (responsiveVisibility(
                    context: context,
                    desktop: false,
                  ))
                    Flexible(
                      child: Form(
                        key: _model.formKey1,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      icon: Icon(
                                        Icons.chevron_left,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 28.0,
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
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Work Sans',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'PI name : ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: getJsonField(
                                                  columnPIATDashboardPropertyDetailViewResponse
                                                      .jsonBody,
                                                  r'''$.assignedToUserName''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    'Inspection Start Date : ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: dateTimeFormat(
                                                    'dd-MM-yyyy',
                                                    functions
                                                        .strToDateTimeConversion(
                                                            getJsonField(
                                                      columnPIATDashboardPropertyDetailViewResponse
                                                          .jsonBody,
                                                      r'''$.taskStartedDate''',
                                                    ).toString())),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
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
                                      wrapWithModel(
                                        model:
                                            _model.piPropertyInformationModel2,
                                        updateCallback: () => setState(() {}),
                                        child: PiPropertyInformationWidget(
                                          country: getJsonField(
                                            columnPIATDashboardPropertyDetailViewResponse
                                                .jsonBody,
                                            r'''$.country''',
                                          ).toString(),
                                          title: getJsonField(
                                            columnPIATDashboardPropertyDetailViewResponse
                                                .jsonBody,
                                            r'''$.title''',
                                          ).toString(),
                                          propertyType: getJsonField(
                                            columnPIATDashboardPropertyDetailViewResponse
                                                .jsonBody,
                                            r'''$.propertyType''',
                                          ).toString(),
                                          flatNo: getJsonField(
                                            columnPIATDashboardPropertyDetailViewResponse
                                                .jsonBody,
                                            r'''$.plotNo''',
                                          ).toString(),
                                          nearbyLandmark: getJsonField(
                                            columnPIATDashboardPropertyDetailViewResponse
                                                .jsonBody,
                                            r'''$.landmark''',
                                          ).toString(),
                                          streetAddress: getJsonField(
                                            columnPIATDashboardPropertyDetailViewResponse
                                                .jsonBody,
                                            r'''$.street''',
                                          ).toString(),
                                          locality: getJsonField(
                                            columnPIATDashboardPropertyDetailViewResponse
                                                .jsonBody,
                                            r'''$.locality''',
                                          ).toString(),
                                          city: getJsonField(
                                            columnPIATDashboardPropertyDetailViewResponse
                                                .jsonBody,
                                            r'''$.city''',
                                          ).toString(),
                                          state: getJsonField(
                                            columnPIATDashboardPropertyDetailViewResponse
                                                .jsonBody,
                                            r'''$.state''',
                                          ).toString(),
                                          pinCode: getJsonField(
                                            columnPIATDashboardPropertyDetailViewResponse
                                                .jsonBody,
                                            r'''$.zipcode''',
                                          ).toString(),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model
                                              .piDocumentVerificationModel2,
                                          updateCallback: () => setState(() {}),
                                          child: PiDocumentVerificationWidget(
                                            docURLS: getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.fileURLs''',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model:
                                              _model.piExteriorInspectionModel2,
                                          updateCallback: () => setState(() {}),
                                          child: PiExteriorInspectionWidget(),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model:
                                              _model.piInteriorInspectionModel2,
                                          updateCallback: () => setState(() {}),
                                          child: PiInteriorInspectionWidget(),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model
                                              .piSafetyAndComplianceModel2,
                                          updateCallback: () => setState(() {}),
                                          child: PiSafetyAndComplianceWidget(),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.piAmenitiesModel2,
                                          updateCallback: () => setState(() {}),
                                          child: PiAmenitiesWidget(),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model
                                              .piBusinessCompliancesModel2,
                                          updateCallback: () => setState(() {}),
                                          child: PiBusinessCompliancesWidget(),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.piUploadImagesModel2,
                                          updateCallback: () => setState(() {}),
                                          child: PiUploadImagesWidget(),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    'Additional Comments/Notes ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: '(optional)',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Work Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
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
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller: _model
                                                .additionalCommentsTextController,
                                            focusNode: _model
                                                .additionalCommentsFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: 3,
                                            maxLength: 500,
                                            maxLengthEnforcement:
                                                MaxLengthEnforcement.enforced,
                                            validator: _model
                                                .additionalCommentsTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                'Date:',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                            Container(
                                              width: 150.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  dateTimeFormat('dd-MM-yyyy',
                                                      getCurrentTimestamp),
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Text(
                                          'Thank you for completing the property inspection form. Please ensure all necessary areas are inspected thoroughly and any issues are documented accurately. If you have any questions or require further assistance, please don\'t hesitate to contact us.',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Work Sans',
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 375.0,
                              height: 68.0,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
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
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Work Sans',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) => FFButtonWidget(
                                      onPressed: () async {
                                        var _shouldSetState = false;
                                        if (_model.formKey1.currentState ==
                                                null ||
                                            !_model.formKey1.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        if (_model.piDocumentVerificationModel2
                                                .personaldocumentsverifiedValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piDocumentVerificationModel2
                                                .propertydocumentsverifiedValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piDocumentVerificationModel2
                                                    .uploadedLocalFile2 ==
                                                null ||
                                            (_model.piDocumentVerificationModel2
                                                        .uploadedLocalFile2.bytes ??
                                                    [])
                                                .isEmpty) {
                                          return;
                                        }
                                        if (_model.piExteriorInspectionModel2
                                                .roofConditionValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piExteriorInspectionModel2
                                                .wallsandSidingValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piExteriorInspectionModel2
                                                .windowsandDoorsValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piExteriorInspectionModel2
                                                .foundationandstructureValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piExteriorInspectionModel2
                                                .drivewayandsidewalksValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piExteriorInspectionModel2
                                                .drainagesystemValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piExteriorInspectionModel2
                                                .buildingpaintingconditionValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piExteriorInspectionModel2
                                                .liftStaircaseValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piExteriorInspectionModel2
                                                .buildingconditionValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piExteriorInspectionModel2
                                                .flooringconditionValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piExteriorInspectionModel2
                                                .fireexitsValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piInteriorInspectionModel2
                                                .flooringValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piInteriorInspectionModel2
                                                .wallsandceilingsValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piInteriorInspectionModel2
                                                .doorsWindowsValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piInteriorInspectionModel2
                                                .electricalsystemValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piInteriorInspectionModel2
                                                .plumbingsystemValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piInteriorInspectionModel2
                                                .bathroomfixturesValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piInteriorInspectionModel2
                                                .hVACsystemsValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piInteriorInspectionModel2
                                                .customizablespaceValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piSafetyAndComplianceModel2
                                                .smokedetectorsValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piSafetyAndComplianceModel2
                                                .carbonmonoxidedetectorsValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piSafetyAndComplianceModel2
                                                .fireextinguishersValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piSafetyAndComplianceModel2
                                                .handrailsandstaircasesValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piSafetyAndComplianceModel2
                                                .digitaldoorlockValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piSafetyAndComplianceModel2
                                                .cctvValue2 ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piSafetyAndComplianceModel2
                                                .securitygaurdValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piAmenitiesModel2
                                                .playgroundorrecreationalareas2Value ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piAmenitiesModel2
                                                .heatingandairconditioningValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piAmenitiesModel2
                                                .kitchenappliancesValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piAmenitiesModel2
                                                .internetaccessValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piAmenitiesModel2
                                                .petfriendlyValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piAmenitiesModel2
                                                .laundryfacilitiesValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piAmenitiesModel2
                                                .parkingspaceValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piAmenitiesModel2
                                                .beachorpoolaccessValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piBusinessCompliancesModel2
                                                .propertylocationfallsunderValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piBusinessCompliancesModel2
                                                .propertyarealocationtypeValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piBusinessCompliancesModel2
                                                .publictransporttypefrequencyValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piBusinessCompliancesModel2
                                                .propertymaintenanceValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piBusinessCompliancesModel2
                                                .transportationfeasibilityValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piBusinessCompliancesModel2
                                                .pricingreasonableValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piBusinessCompliancesModel2
                                                .legalissuesValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piBusinessCompliancesModel2
                                                .businessfeasibilityValue ==
                                            null) {
                                          return;
                                        }
                                        if (_model.piUploadImagesModel2
                                                .uploadImages.length <
                                            2) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Info!'),
                                                content: Text(
                                                    ' Upload at least 2 property images to submit your feedback.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        } else if (_model.piUploadImagesModel2
                                                .uploadImages.length >
                                            5) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Alert!'),
                                                content: Text(
                                                    'Upload property Images should not Exceed more than 5.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        } else {
                                          _model.feedbackRTrespMobile =
                                              await RefreshTokenAPICall.call(
                                            clientId: FFAppConstants.clientId,
                                            clientSecret:
                                                FFAppConstants.clientSecret,
                                            grantType:
                                                FFAppConstants.refreshGrantType,
                                            refreshToken:
                                                FFAppState().refreshToken,
                                          );

                                          _shouldSetState = true;
                                          if ((_model.feedbackRTrespMobile
                                                  ?.succeeded ??
                                              true)) {
                                            FFAppState().accessToken =
                                                getJsonField(
                                              (_model.feedbackRTrespMobile
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.access_token''',
                                            ).toString();
                                            FFAppState().refreshToken =
                                                getJsonField(
                                              (_model.feedbackRTrespMobile
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.refresh_token''',
                                            ).toString();
                                            setState(() {});
                                            _model.piSubmitFormFeedbackRespMobile =
                                                await LiferayBaseUrlGroup
                                                    .pIATSubmitFeedbackCall
                                                    .call(
                                              accessToken:
                                                  FFAppState().accessToken,
                                              reviewId: FFAppState()
                                                  .PIdetailView
                                                  .reviewId,
                                              articleId: getJsonField(
                                                columnPIATDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.articleId''',
                                              ).toString(),
                                              propertyOwnerPicture: _model
                                                  .piDocumentVerificationModel2
                                                  .uploadPropertyOwnerPic,
                                              additionalFile: _model
                                                  .piDocumentVerificationModel2
                                                  .additionalDocId,
                                              fileArrayJson: functions.getPiFilesArray(
                                                  functions
                                                      .getFileNames(_model
                                                          .piUploadImagesModel2
                                                          .uploadImages
                                                          .toList())
                                                      .toList(),
                                                  'additionalFile',
                                                  _model
                                                      .piDocumentVerificationModel2
                                                      .additionalDocId,
                                                  'propertyOwnerPicture',
                                                  _model
                                                      .piDocumentVerificationModel2
                                                      .uploadPropertyOwnerPic),
                                              file1: functions
                                                  .refillFiles(_model
                                                      .piUploadImagesModel2
                                                      .uploadImages
                                                      .toList())
                                                  .first,
                                              file2: functions.refillFiles(
                                                  _model.piUploadImagesModel2
                                                      .uploadImages
                                                      .toList())[1],
                                              file3: functions.refillFiles(
                                                  _model.piUploadImagesModel2
                                                      .uploadImages
                                                      .toList())[2],
                                              file4: functions.refillFiles(
                                                  _model.piUploadImagesModel2
                                                      .uploadImages
                                                      .toList())[3],
                                              file5: functions.refillFiles(
                                                  _model.piUploadImagesModel2
                                                      .uploadImages
                                                      .toList())[4],
                                              feedbackJson:
                                                  functions.piFeedbackJson(
                                                      dateTimeFormat(
                                                          'dd-MM-yyyy',
                                                          functions.strToDateTimeConversion(
                                                              getJsonField(
                                                            columnPIATDashboardPropertyDetailViewResponse
                                                                .jsonBody,
                                                            r'''$.taskAssignedDate''',
                                                          ).toString())),
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.assignedToUserName''',
                                                      ).toString(),
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.title''',
                                                      ).toString(),
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.country''',
                                                      ).toString(),
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.title''',
                                                      ).toString(),
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.propertyType''',
                                                      ).toString(),
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.plotNo''',
                                                      ).toString(),
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.landmark''',
                                                      ).toString(),
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.street''',
                                                      ).toString(),
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.locality''',
                                                      ).toString(),
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.city''',
                                                      ).toString(),
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.state''',
                                                      ).toString(),
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.zipcode''',
                                                      ).toString(),
                                                      _model
                                                          .piPropertyInformationModel2
                                                          .propertySizeFieldTextController
                                                          .text,
                                                      _model
                                                          .piPropertyInformationModel2
                                                          .noOfBedRooms,
                                                      _model
                                                          .piPropertyInformationModel2
                                                          .noOfBathRooms,
                                                      _model
                                                          .piPropertyInformationModel2
                                                          .otherRooms,
                                                      _model
                                                          .piDocumentVerificationModel2
                                                          .personaldocumentsverifiedValue,
                                                      _model
                                                          .piDocumentVerificationModel2
                                                          .propertydocumentsverifiedValue,
                                                      _model
                                                          .piExteriorInspectionModel2
                                                          .roofConditionValue2,
                                                      _model
                                                          .piExteriorInspectionModel2
                                                          .windowsandDoorsValue2,
                                                      _model
                                                          .piExteriorInspectionModel2
                                                          .drivewayandsidewalksValue2,
                                                      _model
                                                          .piExteriorInspectionModel2
                                                          .buildingpaintingconditionValue2,
                                                      _model
                                                          .piExteriorInspectionModel2
                                                          .flooringconditionValue,
                                                      _model
                                                          .piExteriorInspectionModel2
                                                          .fireexitsValue2,
                                                      _model
                                                          .piExteriorInspectionModel2
                                                          .wallsandSidingValue2,
                                                      _model
                                                          .piExteriorInspectionModel2
                                                          .foundationandstructureValue2,
                                                      _model
                                                          .piExteriorInspectionModel2
                                                          .drainagesystemValue2,
                                                      _model
                                                          .piExteriorInspectionModel2
                                                          .buildingconditionValue2,
                                                      _model
                                                          .piExteriorInspectionModel2
                                                          .liftStaircaseValue2,
                                                      _model.piInteriorInspectionModel2.flooringValue2,
                                                      _model.piInteriorInspectionModel2.doorsWindowsValue,
                                                      _model.piInteriorInspectionModel2.plumbingsystemValue,
                                                      _model.piInteriorInspectionModel2.hVACsystemsValue,
                                                      _model.piInteriorInspectionModel2.wallsandceilingsValue,
                                                      _model.piInteriorInspectionModel2.electricalsystemValue,
                                                      _model.piInteriorInspectionModel2.bathroomfixturesValue,
                                                      _model.piInteriorInspectionModel2.customizablespaceValue,
                                                      _model.piInteriorInspectionModel2.noOfBalconies,
                                                      _model.piInteriorInspectionModel2.noOfDoors,
                                                      _model.piInteriorInspectionModel2.noOfFans,
                                                      _model.piInteriorInspectionModel2.noOfLights,
                                                      _model.piInteriorInspectionModel2.noOfWashrooms?.toString(),
                                                      _model.piInteriorInspectionModel2.noOfWashbasins?.toString(),
                                                      _model.piInteriorInspectionModel2.noOfShowers?.toString(),
                                                      _model.piSafetyAndComplianceModel2.smokedetectorsValue,
                                                      _model.piSafetyAndComplianceModel2.carbonmonoxidedetectorsValue,
                                                      _model.piSafetyAndComplianceModel2.fireextinguishersValue,
                                                      _model.piSafetyAndComplianceModel2.handrailsandstaircasesValue,
                                                      _model.piSafetyAndComplianceModel2.securitygaurdValue,
                                                      _model.piSafetyAndComplianceModel2.digitaldoorlockValue2,
                                                      _model.piSafetyAndComplianceModel2.cctvValue2,
                                                      _model.piAmenitiesModel2.kitchenappliancesValue,
                                                      _model.piAmenitiesModel2.laundryfacilitiesValue,
                                                      _model.piAmenitiesModel2.heatingandairconditioningValue,
                                                      _model.piAmenitiesModel2.internetaccessValue,
                                                      _model.piAmenitiesModel2.parkingspaceValue,
                                                      _model.piAmenitiesModel2.petfriendlyValue,
                                                      _model.piAmenitiesModel2.playgroundorrecreationalareas2Value,
                                                      _model.piAmenitiesModel2.beachorpoolaccessValue,
                                                      _model.piBusinessCompliancesModel2.propertylocationfallsunderValue,
                                                      _model.piBusinessCompliancesModel2.propertymaintenanceValue,
                                                      _model.piBusinessCompliancesModel2.transportationfeasibilityValue,
                                                      _model.piBusinessCompliancesModel2.pricingreasonableValue,
                                                      _model.piBusinessCompliancesModel2.localmarketrentpriceTextController.text,
                                                      _model.piBusinessCompliancesModel2.propertyarealocationtypeValue,
                                                      _model.piBusinessCompliancesModel2.publictransporttypefrequencyValue,
                                                      _model.piBusinessCompliancesModel2.legalissuesValue,
                                                      _model.piBusinessCompliancesModel2.businessfeasibilityValue,
                                                      _model.additionalCommentsTextController.text,
                                                      dateTimeFormat('dd-MM-yyyy', getCurrentTimestamp)),
                                            );

                                            _shouldSetState = true;
                                            if ((_model
                                                    .piSubmitFormFeedbackRespMobile
                                                    ?.succeeded ??
                                                true)) {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  661.0) {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: Container(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.47,
                                                          child:
                                                              PiPropertySuccessWidget(
                                                            message:
                                                                'Feedback Form Submitted Successfully!',
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));

                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              } else {
                                                await showDialog(
                                                  barrierDismissible: false,
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child:
                                                            PiPropertySuccessWidget(
                                                          message:
                                                              'Feedback Form Submitted Successfully!',
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));

                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }
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
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }
                                          } else {
                                            await showDialog(
                                              barrierColor: Color(0xCC000D3E),
                                              barrierDismissible: false,
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.9,
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.3,
                                                      child:
                                                          PhoneNumLoginWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));

                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          }
                                        }

                                        if (_shouldSetState) setState(() {});
                                      },
                                      text: 'Submit',
                                      options: FFButtonOptions(
                                        width: 150.0,
                                        height: 36.0,
                                        padding: EdgeInsets.all(0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Work Sans',
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 4.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
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
                                        fontFamily: 'Work Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Builder(
                              builder: (context) => FFButtonWidget(
                                onPressed: () async {
                                  var _shouldSetState = false;
                                  if (_model.formKey2.currentState == null ||
                                      !_model.formKey2.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if (_model.piDocumentVerificationModel1
                                          .userPersonalDocumentValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piDocumentVerificationModel1
                                          .propertyDocumentValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piExteriorInspectionModel1
                                          .roofConditionValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piExteriorInspectionModel1
                                          .windowsandDoorsValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piExteriorInspectionModel1
                                          .drivewayandsidewalksValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piExteriorInspectionModel1
                                          .buildingpaintingconditionValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piExteriorInspectionModel1
                                          .flooringConditionValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piExteriorInspectionModel1
                                          .fireexitsValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piExteriorInspectionModel1
                                          .wallsandSidingValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piExteriorInspectionModel1
                                          .foundationandstructureValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piExteriorInspectionModel1
                                          .drainagesystemValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piExteriorInspectionModel1
                                          .buildingconditionValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piExteriorInspectionModel1
                                          .liftStaircaseValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piInteriorInspectionModel1
                                          .flooringValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piInteriorInspectionModel1
                                          .doorsAndWindowsValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piInteriorInspectionModel1
                                          .plumbingsystemsValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piInteriorInspectionModel1
                                          .hvacSystemsValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piInteriorInspectionModel1
                                          .wallsAndCeilingsValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piInteriorInspectionModel1
                                          .electricalSystemValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piInteriorInspectionModel1
                                          .bathroomFixturesValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piInteriorInspectionModel1
                                          .customizableSpaceValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piSafetyAndComplianceModel1
                                          .smokeDetectorsValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piSafetyAndComplianceModel1
                                          .fireExtinguishersValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piSafetyAndComplianceModel1
                                          .securityGaurdValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piSafetyAndComplianceModel1
                                          .cctvValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piSafetyAndComplianceModel1
                                          .carbonmonoxideDetectorValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piSafetyAndComplianceModel1
                                          .handrollsAndStaircasesValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piSafetyAndComplianceModel1
                                          .digitaldoorlockValue1 ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piAmenitiesModel1
                                          .kitchenAppliancesValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piAmenitiesModel1
                                          .heatingAndAirConditioningSystemsValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piAmenitiesModel1
                                          .parkingSpaceValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piAmenitiesModel1
                                          .playGroundOrRecreationalAreasValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piAmenitiesModel1
                                          .laundryFacilitiesValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piAmenitiesModel1
                                          .internetAccessValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model
                                          .piAmenitiesModel1.petFriendlyValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piAmenitiesModel1
                                          .beachOrPoolaccessValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piBusinessCompliancesModel1
                                          .propertyLocationFallsUnderValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piBusinessCompliancesModel1
                                          .propertyMaintenanceValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piBusinessCompliancesModel1
                                          .transportationFeasibilityValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piBusinessCompliancesModel1
                                          .pricingReasonableToTheAreaValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piBusinessCompliancesModel1
                                          .propertyAreaTypeValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piBusinessCompliancesModel1
                                          .publicTransportFrequencyValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piBusinessCompliancesModel1
                                          .legalIssuesValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piBusinessCompliancesModel1
                                          .buninessFeasibilityValue ==
                                      null) {
                                    return;
                                  }
                                  if (_model.piUploadImagesModel1.uploadImages
                                          .length <
                                      2) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Info!'),
                                          content: Text(
                                              ' Upload at least 2 property images to submit your feedback.'),
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
                                  } else if (_model.piUploadImagesModel1
                                          .uploadImages.length >
                                      5) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Alert!'),
                                          content: Text(
                                              'Upload property Images should not Exceed more than 5.'),
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
                                  } else {
                                    _model.feedbackRTresponse =
                                        await RefreshTokenAPICall.call(
                                      clientId: FFAppConstants.clientId,
                                      clientSecret: FFAppConstants.clientSecret,
                                      grantType:
                                          FFAppConstants.refreshGrantType,
                                      refreshToken: FFAppState().refreshToken,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.feedbackRTresponse?.succeeded ??
                                        true)) {
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
                                      setState(() {});
                                      _model.piSubmitFormFeedbackRes =
                                          await LiferayBaseUrlGroup
                                              .pIATSubmitFeedbackCall
                                              .call(
                                        accessToken: FFAppState().accessToken,
                                        reviewId:
                                            FFAppState().PIdetailView.reviewId,
                                        articleId: getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
                                              .jsonBody,
                                          r'''$.articleId''',
                                        ).toString(),
                                        propertyOwnerPicture: _model
                                            .piDocumentVerificationModel1
                                            .uploadPropertyOwnerPic,
                                        additionalFile: _model
                                            .piDocumentVerificationModel1
                                            .additionalDocId,
                                        fileArrayJson: functions.getPiFilesArray(
                                            functions
                                                .getFileNames(_model
                                                    .piUploadImagesModel1
                                                    .uploadImages
                                                    .toList())
                                                .toList(),
                                            'additionalFile',
                                            _model.piDocumentVerificationModel1
                                                .additionalDocId,
                                            'propertyOwnerPicture',
                                            _model.piDocumentVerificationModel1
                                                .uploadPropertyOwnerPic),
                                        file1: functions
                                            .refillFiles(_model
                                                .piUploadImagesModel1
                                                .uploadImages
                                                .toList())
                                            .first,
                                        file2: functions.refillFiles(_model
                                            .piUploadImagesModel1.uploadImages
                                            .toList())[1],
                                        file3: functions.refillFiles(_model
                                            .piUploadImagesModel1.uploadImages
                                            .toList())[2],
                                        file4: functions.refillFiles(_model
                                            .piUploadImagesModel1.uploadImages
                                            .toList())[3],
                                        file5: functions.refillFiles(_model
                                            .piUploadImagesModel1.uploadImages
                                            .toList())[4],
                                        feedbackJson: functions.piFeedbackJson(
                                            dateTimeFormat(
                                                'dd-MM-yyyy',
                                                functions.strToDateTimeConversion(
                                                    getJsonField(
                                                  columnPIATDashboardPropertyDetailViewResponse
                                                      .jsonBody,
                                                  r'''$.taskAssignedDate''',
                                                ).toString())),
                                            getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.assignedToUserName''',
                                            ).toString(),
                                            getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.title''',
                                            ).toString(),
                                            getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.country''',
                                            ).toString(),
                                            getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.title''',
                                            ).toString(),
                                            getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.propertyType''',
                                            ).toString(),
                                            getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.plotNo''',
                                            ).toString(),
                                            valueOrDefault<String>(
                                              getJsonField(
                                                columnPIATDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.landmark''',
                                              )?.toString(),
                                              '--',
                                            ),
                                            getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.street''',
                                            ).toString(),
                                            getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.locality''',
                                            ).toString(),
                                            getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.city''',
                                            ).toString(),
                                            getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.state''',
                                            ).toString(),
                                            getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.zipcode''',
                                            ).toString(),
                                            _model
                                                .piPropertyInformationModel1
                                                .propertySizeSqftTextController
                                                .text,
                                            _model.piPropertyInformationModel1
                                                .noOfBedRooms,
                                            _model.piPropertyInformationModel1
                                                .noOfBathRooms,
                                            _model.piPropertyInformationModel1
                                                .otherRooms,
                                            _model.piDocumentVerificationModel1
                                                .userPersonalDocumentValue,
                                            _model.piDocumentVerificationModel1
                                                .propertyDocumentValue,
                                            _model.piExteriorInspectionModel1
                                                .roofConditionValue1,
                                            _model.piExteriorInspectionModel1
                                                .windowsandDoorsValue1,
                                            _model.piExteriorInspectionModel1
                                                .drivewayandsidewalksValue1,
                                            _model.piExteriorInspectionModel1
                                                .buildingpaintingconditionValue1,
                                            _model.piExteriorInspectionModel1
                                                .flooringConditionValue,
                                            _model.piExteriorInspectionModel1
                                                .fireexitsValue1,
                                            _model.piExteriorInspectionModel1
                                                .wallsandSidingValue1,
                                            _model.piExteriorInspectionModel1
                                                .foundationandstructureValue1,
                                            _model.piExteriorInspectionModel1
                                                .drainagesystemValue1,
                                            _model.piExteriorInspectionModel1
                                                .buildingconditionValue1,
                                            _model.piExteriorInspectionModel1
                                                .liftStaircaseValue1,
                                            _model.piInteriorInspectionModel1
                                                .flooringValue1,
                                            _model.piInteriorInspectionModel1
                                                .doorsAndWindowsValue,
                                            _model.piInteriorInspectionModel1
                                                .plumbingsystemsValue,
                                            _model.piInteriorInspectionModel1
                                                .hvacSystemsValue,
                                            _model.piInteriorInspectionModel1
                                                .wallsAndCeilingsValue,
                                            _model.piInteriorInspectionModel1
                                                .electricalSystemValue,
                                            _model.piInteriorInspectionModel1
                                                .bathroomFixturesValue,
                                            _model.piInteriorInspectionModel1
                                                .customizableSpaceValue,
                                            _model.piInteriorInspectionModel1.noOfBalconies,
                                            _model.piInteriorInspectionModel1.noOfDoors,
                                            _model.piInteriorInspectionModel1.noOfFans,
                                            _model.piInteriorInspectionModel1.noOfLights,
                                            _model.piInteriorInspectionModel1.noOfWashrooms?.toString(),
                                            _model.piInteriorInspectionModel1.noOfWashbasins?.toString(),
                                            _model.piInteriorInspectionModel1.noOfShowers?.toString(),
                                            _model.piSafetyAndComplianceModel1.smokeDetectorsValue,
                                            _model.piSafetyAndComplianceModel1.carbonmonoxideDetectorValue,
                                            _model.piSafetyAndComplianceModel1.fireExtinguishersValue,
                                            _model.piSafetyAndComplianceModel1.handrollsAndStaircasesValue,
                                            _model.piSafetyAndComplianceModel1.securityGaurdValue,
                                            _model.piSafetyAndComplianceModel1.digitaldoorlockValue1,
                                            _model.piSafetyAndComplianceModel1.cctvValue1,
                                            _model.piAmenitiesModel1.kitchenAppliancesValue,
                                            _model.piAmenitiesModel1.laundryFacilitiesValue,
                                            _model.piAmenitiesModel1.heatingAndAirConditioningSystemsValue,
                                            _model.piAmenitiesModel1.internetAccessValue,
                                            _model.piAmenitiesModel1.parkingSpaceValue,
                                            _model.piAmenitiesModel1.petFriendlyValue,
                                            _model.piAmenitiesModel1.playGroundOrRecreationalAreasValue,
                                            _model.piAmenitiesModel1.beachOrPoolaccessValue,
                                            _model.piBusinessCompliancesModel1.propertyLocationFallsUnderValue,
                                            _model.piBusinessCompliancesModel1.propertyMaintenanceValue,
                                            _model.piBusinessCompliancesModel1.transportationFeasibilityValue,
                                            _model.piBusinessCompliancesModel1.pricingReasonableToTheAreaValue,
                                            _model.piBusinessCompliancesModel1.localMarketRentPriceTextController.text,
                                            _model.piBusinessCompliancesModel1.propertyAreaTypeValue,
                                            _model.piBusinessCompliancesModel1.publicTransportFrequencyValue,
                                            _model.piBusinessCompliancesModel1.legalIssuesValue,
                                            _model.piBusinessCompliancesModel1.buninessFeasibilityValue,
                                            _model.piAdditionalCommentsModel.additionalCommentsTextController.text,
                                            dateTimeFormat('dd-MM-yyyy', getCurrentTimestamp)),
                                      );

                                      _shouldSetState = true;
                                      if ((_model.piSubmitFormFeedbackRes
                                              ?.succeeded ??
                                          true)) {
                                        await showDialog(
                                          barrierDismissible: false,
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.3,
                                                  child:
                                                      PiPropertySuccessWidget(
                                                    message:
                                                        'Feedback Form Submitted Successfully!',
                                                  ),
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
                                                  'Few fields are missing out !'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
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
                                              onTap: () => _model.unfocusNode
                                                      .canRequestFocus
                                                  ? FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode)
                                                  : FocusScope.of(context)
                                                      .unfocus(),
                                              child: Container(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.9,
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.3,
                                                child: PhoneNumLoginWidget(),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));

                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }
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
                                        fontFamily: 'Work Sans',
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
    );
  }
}
