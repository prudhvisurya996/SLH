import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/property_inspector/pi_dashboard/pi_dashboard/pi_dashboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'p_i_dashboard_model.dart';
export 'p_i_dashboard_model.dart';

class PIDashboardWidget extends StatefulWidget {
  const PIDashboardWidget({super.key});

  @override
  State<PIDashboardWidget> createState() => _PIDashboardWidgetState();
}

class _PIDashboardWidgetState extends State<PIDashboardWidget> {
  late PIDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PIDashboardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            child: Column(
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 68.0,
                        decoration: BoxDecoration(),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.piDashboardModel,
                          updateCallback: () => setState(() {}),
                          child: PiDashboardWidget(),
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
        ),
      ),
    );
  }
}
