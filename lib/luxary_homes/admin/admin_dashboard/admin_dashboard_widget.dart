import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/admin/admin_dashboard/lease_rqt_db/lease_rqt_db_widget.dart';
import '/luxary_homes/admin/admin_dashboard/property_listing_db/property_listing_db_widget.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_dashboard_model.dart';
export 'admin_dashboard_model.dart';

class AdminDashboardWidget extends StatefulWidget {
  const AdminDashboardWidget({super.key});

  @override
  State<AdminDashboardWidget> createState() => _AdminDashboardWidgetState();
}

class _AdminDashboardWidgetState extends State<AdminDashboardWidget> {
  late AdminDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminDashboardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().updateAdminLeasePropertyDetailViewStruct(
          (e) => e
            ..articleId = null
            ..status = null
            ..city = null
            ..propertyId = null,
        );
      });
    });

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.commonTopBarModel,
                        updateCallback: () => setState(() {}),
                        child: CommonTopBarWidget(
                          showSearchFilter: false,
                        ),
                      ),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 68.0,
                              decoration: BoxDecoration(),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor: Color(0x4CBBD1EA),
                                            icon: Icon(
                                              Icons.arrow_back_ios_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: () async {
                                              context.safePop();
                                            },
                                          ),
                                          if (_model.selectPropertyType ==
                                              'Property Listing')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      30.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Property Listing',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.0,
                                                ),
                                              ),
                                            ),
                                          if (_model.selectPropertyType ==
                                              'Lease Request')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      30.0, 0.0, 0.0, 0.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Lease Request',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 22.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '  (External)',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0x80000D3E),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12.0,
                                                      ),
                                                    )
                                                  ],
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Select property type',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 0.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue ??=
                                                      _model.selectPropertyType,
                                                ),
                                                options: [
                                                  'Property Listing',
                                                  'Lease Request'
                                                ],
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .dropDownValue = val);
                                                  setState(() {
                                                    _model.selectPropertyType =
                                                        _model.dropDownValue;
                                                  });
                                                },
                                                width: 264.0,
                                                height: 45.0,
                                                textStyle: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16.0,
                                                ),
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Flexible(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (_model.selectPropertyType ==
                                            'Property Listing')
                                          Expanded(
                                            child: wrapWithModel(
                                              model:
                                                  _model.propertyListingDbModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: PropertyListingDbWidget(),
                                            ),
                                          ),
                                        if (_model.selectPropertyType ==
                                            'Lease Request')
                                          Flexible(
                                            child: wrapWithModel(
                                              model: _model.leaseRqtDbModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: LeaseRqtDbWidget(),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 68.0,
                              decoration: BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                      wrapWithModel(
                        model: _model.webBottomCopyWriteModel,
                        updateCallback: () => setState(() {}),
                        child: WebBottomCopyWriteWidget(),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: Icon(
                                Icons.not_interested_sharp,
                                color: FlutterFlowTheme.of(context).error,
                                size: 24.0,
                              ),
                            ),
                            Text(
                              'Page Not Found',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Sorry, this page can\'t be opened on other devices. Please access it from a web/desktop browser instead.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
