import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/portfolio_manager/ex_lease_dashboard/ex_lease_dashboard_widget.dart';
import '/luxary_homes/portfolio_manager/in_listing_dashboard/in_listing_dashboard_widget.dart';
import 'pm_dashboard_widget.dart' show PmDashboardWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PmDashboardModel extends FlutterFlowModel<PmDashboardWidget> {
  ///  Local state fields for this page.

  String? selectPropertyType = 'Lease Request';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for in_listing_dashboard component.
  late InListingDashboardModel inListingDashboardModel;
  // Model for ex_lease_dashboard component.
  late ExLeaseDashboardModel exLeaseDashboardModel;
  // Model for web_copy_write component.
  late WebCopyWriteModel webCopyWriteModel;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    inListingDashboardModel =
        createModel(context, () => InListingDashboardModel());
    exLeaseDashboardModel = createModel(context, () => ExLeaseDashboardModel());
    webCopyWriteModel = createModel(context, () => WebCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    inListingDashboardModel.dispose();
    exLeaseDashboardModel.dispose();
    webCopyWriteModel.dispose();
  }
}
