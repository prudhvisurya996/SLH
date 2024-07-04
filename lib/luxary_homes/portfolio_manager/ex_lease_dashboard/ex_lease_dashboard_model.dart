import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/ex_lease_approve/ex_lease_approve_widget.dart';
import '/luxary_homes/portfolio_manager/ex_lease_assign/ex_lease_assign_widget.dart';
import '/luxary_homes/portfolio_manager/ex_lease_pending/ex_lease_pending_widget.dart';
import '/luxary_homes/portfolio_manager/ex_lease_reject/ex_lease_reject_widget.dart';
import 'ex_lease_dashboard_widget.dart' show ExLeaseDashboardWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExLeaseDashboardModel extends FlutterFlowModel<ExLeaseDashboardWidget> {
  ///  Local state fields for this component.

  int? propertyStatus = 2;

  int? pageNo = 1;

  int? pageSize = 17;

  ///  State fields for stateful widgets in this component.

  // Model for ex_lease_assign component.
  late ExLeaseAssignModel exLeaseAssignModel;
  // Model for ex_lease_pending component.
  late ExLeasePendingModel exLeasePendingModel;
  // Model for ex_lease_approve component.
  late ExLeaseApproveModel exLeaseApproveModel;
  // Model for ex_lease_reject component.
  late ExLeaseRejectModel exLeaseRejectModel;

  @override
  void initState(BuildContext context) {
    exLeaseAssignModel = createModel(context, () => ExLeaseAssignModel());
    exLeasePendingModel = createModel(context, () => ExLeasePendingModel());
    exLeaseApproveModel = createModel(context, () => ExLeaseApproveModel());
    exLeaseRejectModel = createModel(context, () => ExLeaseRejectModel());
  }

  @override
  void dispose() {
    exLeaseAssignModel.dispose();
    exLeasePendingModel.dispose();
    exLeaseApproveModel.dispose();
    exLeaseRejectModel.dispose();
  }
}
