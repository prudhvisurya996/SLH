import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/property_inspector/pi_dashboard/pi_dashboard/pi_dashboard_widget.dart';
import 'p_i_dashboard_widget.dart' show PIDashboardWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PIDashboardModel extends FlutterFlowModel<PIDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for pi_dashboard component.
  late PiDashboardModel piDashboardModel;
  // Model for WebBottomCopyWrite component.
  late WebBottomCopyWriteModel webBottomCopyWriteModel;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    piDashboardModel = createModel(context, () => PiDashboardModel());
    webBottomCopyWriteModel =
        createModel(context, () => WebBottomCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    piDashboardModel.dispose();
    webBottomCopyWriteModel.dispose();
  }
}
