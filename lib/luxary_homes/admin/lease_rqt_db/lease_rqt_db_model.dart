import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/admin_property_lease_request/lease_approve/lease_approve_widget.dart';
import '/luxary_homes/admin/admin_property_lease_request/lease_assign/lease_assign_widget.dart';
import '/luxary_homes/admin/admin_property_lease_request/lease_pending/lease_pending_widget.dart';
import '/luxary_homes/admin/admin_property_lease_request/lease_reject/lease_reject_widget.dart';
import 'lease_rqt_db_widget.dart' show LeaseRqtDbWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeaseRqtDbModel extends FlutterFlowModel<LeaseRqtDbWidget> {
  ///  Local state fields for this component.

  int? propertyStatus = 2;

  int? pageNo = 1;

  int? pageSize = 17;

  ///  State fields for stateful widgets in this component.

  // Model for lease_assign component.
  late LeaseAssignModel leaseAssignModel;
  // Model for lease_pending component.
  late LeasePendingModel leasePendingModel;
  // Model for lease_approve component.
  late LeaseApproveModel leaseApproveModel;
  // Model for lease_reject component.
  late LeaseRejectModel leaseRejectModel;

  @override
  void initState(BuildContext context) {
    leaseAssignModel = createModel(context, () => LeaseAssignModel());
    leasePendingModel = createModel(context, () => LeasePendingModel());
    leaseApproveModel = createModel(context, () => LeaseApproveModel());
    leaseRejectModel = createModel(context, () => LeaseRejectModel());
  }

  @override
  void dispose() {
    leaseAssignModel.dispose();
    leasePendingModel.dispose();
    leaseApproveModel.dispose();
    leaseRejectModel.dispose();
  }
}
