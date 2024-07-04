import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_form_component_model.dart';
export 'filter_form_component_model.dart';

class FilterFormComponentWidget extends StatefulWidget {
  const FilterFormComponentWidget({super.key});

  @override
  State<FilterFormComponentWidget> createState() =>
      _FilterFormComponentWidgetState();
}

class _FilterFormComponentWidgetState extends State<FilterFormComponentWidget> {
  late FilterFormComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterFormComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Filter',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: SvgPicture.asset(
                    'assets/images/close.svg',
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1.0,
          thickness: 1.0,
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        Padding(
          padding: EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Budget',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: Color(0xFF000D3E),
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50.0,
                  child: custom_widgets.RangePriceComponent(
                    width: double.infinity,
                    height: 50.0,
                    minAmount: 500.0,
                    maxAmount: 99999.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Min',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Max',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                        child: Container(
                          width: 158.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              '₹${formatNumber(
                                FFAppState().priceMin,
                                formatType: FormatType.custom,
                                format: '0.00',
                                locale: '',
                              )}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: 158.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              '₹${formatNumber(
                                FFAppState().priceMax,
                                formatType: FormatType.custom,
                                format: '0.00',
                                locale: '',
                              )}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: FFAppState().propertyTypeCache(
                      requestFn: () =>
                          LiferayBaseUrlGroup.getPropertyTypesCall.call(),
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
                      final columnGetPropertyTypesResponse = snapshot.data!;
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Text(
                              'Property type',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final propertytype =
                                  columnGetPropertyTypesResponse.jsonBody
                                      .toList();
                              return Wrap(
                                spacing: 15.0,
                                runSpacing: 15.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: List.generate(propertytype.length,
                                    (propertytypeIndex) {
                                  final propertytypeItem =
                                      propertytype[propertytypeIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState()
                                          .userFilterPropertyType
                                          .contains(getJsonField(
                                            propertytypeItem,
                                            r'''$.categoryId''',
                                          ))) {
                                        setState(() {
                                          FFAppState()
                                              .removeFromUserFilterPropertyType(
                                                  getJsonField(
                                            propertytypeItem,
                                            r'''$.categoryId''',
                                          ));
                                        });
                                      } else {
                                        setState(() {
                                          FFAppState()
                                              .addToUserFilterPropertyType(
                                                  getJsonField(
                                            propertytypeItem,
                                            r'''$.categoryId''',
                                          ));
                                        });
                                      }
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        if (!FFAppState()
                                            .userFilterPropertyType
                                            .contains(getJsonField(
                                              propertytypeItem,
                                              r'''$.categoryId''',
                                            )))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 5.0, 0.0),
                                            child: Container(
                                              width: 20.0,
                                              height: 20.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 2.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (FFAppState()
                                            .userFilterPropertyType
                                            .contains(getJsonField(
                                              propertytypeItem,
                                              r'''$.categoryId''',
                                            )))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 5.0, 0.0),
                                            child: Container(
                                              width: 20.0,
                                              height: 20.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.check,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  size: 16.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            getJsonField(
                                              propertytypeItem,
                                              r'''$.name''',
                                            ).toString(),
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Color(0xFF000D3E),
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      -4.0,
                    ),
                    spreadRadius: 0.0,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 16.0, 30.0, 30.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          setState(() {
                            FFAppState().userFilterPropertyType = [];
                            FFAppState().userFilterSecurityAmenities = [];
                            FFAppState().userFilterBasicAmenities = [];
                            FFAppState().priceMin = 500.0;
                            FFAppState().priceMax = 99999.0;
                          });
                        },
                        text: 'Clear',
                        options: FFButtonOptions(
                          width: 145.0,
                          height: 36.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 4.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (MediaQuery.sizeOf(context).width < 991.0) {
                            Navigator.pop(context);
                          } else {
                            context.safePop();
                          }

                          if (FFAppState().isEnableSearch) {
                            context.goNamed(
                              'HelperPage',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 100),
                                ),
                              },
                            );
                          }

                          context.pushNamed(
                            'SearchPage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                              ),
                            },
                          );

                          _model.filterOutput =
                              await MicroserviceAvailabilityAPIsGroup
                                  .searchFilterAPICall
                                  .call(
                            priceLowerLimit: FFAppState().priceMin,
                            priceUpperLimit: FFAppState().priceMax,
                            pageNumber: 1,
                            loaditemsCount:
                                MediaQuery.sizeOf(context).width <= 500.0
                                    ? 4
                                    : 8,
                            propertyTypeIds: functions.listTostrConversion(
                                FFAppState().userFilterPropertyType.toList()),
                            locality: FFAppState().searchLocality,
                            city: FFAppState().searchCity,
                            totalGuests: FFAppState().searchGuests,
                            checkInDate: FFAppState().searchDates.length > 0
                                ? dateTimeFormat('yyyy-MM-dd',
                                    FFAppState().searchDates.first)
                                : null,
                            checkOutDate: FFAppState().searchDates.length > 0
                                ? dateTimeFormat(
                                    'yyyy-MM-dd', FFAppState().searchDates.last)
                                : null,
                          );
                          if ((_model.filterOutput?.succeeded ?? true)) {
                            FFAppState().update(() {
                              FFAppState().searchResultCount = getJsonField(
                                (_model.filterOutput?.jsonBody ?? ''),
                                r'''$.totalCount''',
                              );
                            });
                          } else {
                            FFAppState().update(() {
                              FFAppState().searchResultCount = 0;
                            });
                          }

                          setState(() {});
                        },
                        text: 'Filter',
                        options: FFButtonOptions(
                          width: 145.0,
                          height: 36.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).labelSmall.override(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
