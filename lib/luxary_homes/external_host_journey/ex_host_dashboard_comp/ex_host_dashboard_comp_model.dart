import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/ex_host_listed/ex_host_listed_widget.dart';
import '/luxary_homes/external_host_journey/ex_host_ongoing/ex_host_ongoing_widget.dart';
import '/luxary_homes/external_host_journey/ex_host_rejected/ex_host_rejected_widget.dart';
import 'ex_host_dashboard_comp_widget.dart' show ExHostDashboardCompWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExHostDashboardCompModel
    extends FlutterFlowModel<ExHostDashboardCompWidget> {
  ///  Local state fields for this component.

  int? propertyStatus = 3;

  int? pageNo = 1;

  int? pageSize = 17;

  ///  State fields for stateful widgets in this component.

  // Model for ex_host_ongoing component.
  late ExHostOngoingModel exHostOngoingModel;
  // Model for ex_host_rejected component.
  late ExHostRejectedModel exHostRejectedModel;
  // Model for ex_host_listed component.
  late ExHostListedModel exHostListedModel;

  @override
  void initState(BuildContext context) {
    exHostOngoingModel = createModel(context, () => ExHostOngoingModel());
    exHostRejectedModel = createModel(context, () => ExHostRejectedModel());
    exHostListedModel = createModel(context, () => ExHostListedModel());
  }

  @override
  void dispose() {
    exHostOngoingModel.dispose();
    exHostRejectedModel.dispose();
    exHostListedModel.dispose();
  }
}
