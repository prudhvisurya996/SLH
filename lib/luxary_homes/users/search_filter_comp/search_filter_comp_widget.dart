import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/filter/filter_widget.dart';
import '/luxary_homes/users/search/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_filter_comp_model.dart';
export 'search_filter_comp_model.dart';

class SearchFilterCompWidget extends StatefulWidget {
  const SearchFilterCompWidget({super.key});

  @override
  State<SearchFilterCompWidget> createState() => _SearchFilterCompWidgetState();
}

class _SearchFilterCompWidgetState extends State<SearchFilterCompWidget> {
  late SearchFilterCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchFilterCompModel());

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

    return Container(
      width: MediaQuery.sizeOf(context).width <= 1000.0
          ? MediaQuery.sizeOf(context).width
          : (MediaQuery.sizeOf(context).width * 0.3),
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Builder(
              builder: (context) => InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (MediaQuery.sizeOf(context).width < 991.0) {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      isDismissible: false,
                      enableDrag: false,
                      useSafeArea: true,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.9,
                            child: SearchWidget(),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
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
                          alignment: AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            child: SearchWidget(),
                          ),
                        );
                      },
                    ).then((value) => setState(() {}));
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FaIcon(
                        FontAwesomeIcons.search,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 20.0,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(12.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(12.0),
                          ),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            width: 1.0,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFAppState().searchCity != null &&
                                        FFAppState().searchCity != ''
                                    ? FFAppState().searchCity
                                    : 'Any Place',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Work Sans',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  3.0, 0.0, 3.0, 0.0),
                              child: Container(
                                width: 4.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    2.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFAppState().searchDates.length > 0
                                      ? '${dateTimeFormat('MMMd', FFAppState().searchDates.first)} - ${dateTimeFormat('MMMd', FFAppState().searchDates.last)}'
                                      : 'Any Date',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Work Sans',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  3.0, 0.0, 3.0, 0.0),
                              child: Container(
                                width: 4.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    2.0, 0.0, 5.0, 0.0),
                                child: Text(
                                  FFAppState().searchGuests > 0
                                      ? '${FFAppState().searchGuests.toString()} Guests'
                                      : 'Guests',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Work Sans',
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
          ),
          Builder(
            builder: (context) => Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (MediaQuery.sizeOf(context).width < 991.0) {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      isDismissible: false,
                      enableDrag: false,
                      useSafeArea: true,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: FilterWidget(),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
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
                          alignment: AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            child: FilterWidget(),
                          ),
                        );
                      },
                    ).then((value) => setState(() {}));
                  }
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBgOpacity,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/filter_gif.gif',
                      width: 30.0,
                      height: 30.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
