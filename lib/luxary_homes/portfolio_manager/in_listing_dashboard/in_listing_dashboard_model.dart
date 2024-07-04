import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/in_property_approve/in_property_approve_widget.dart';
import '/luxary_homes/portfolio_manager/in_property_blocked/in_property_blocked_widget.dart';
import '/luxary_homes/portfolio_manager/in_property_rejected/in_property_rejected_widget.dart';
import '/luxary_homes/profile/in_property_pending/in_property_pending_widget.dart';
import 'in_listing_dashboard_widget.dart' show InListingDashboardWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InListingDashboardModel
    extends FlutterFlowModel<InListingDashboardWidget> {
  ///  Local state fields for this component.

  int? propertyStatus = 2;

  int? pageNo = 1;

  int? pageSize = 17;

  ///  State fields for stateful widgets in this component.

  // Model for in_property_blocked component.
  late InPropertyBlockedModel inPropertyBlockedModel;
  // Model for in_property_rejected component.
  late InPropertyRejectedModel inPropertyRejectedModel;
  // Model for in_property_approve component.
  late InPropertyApproveModel inPropertyApproveModel;
  // Model for in_property_pending component.
  late InPropertyPendingModel inPropertyPendingModel;

  @override
  void initState(BuildContext context) {
    inPropertyBlockedModel =
        createModel(context, () => InPropertyBlockedModel());
    inPropertyRejectedModel =
        createModel(context, () => InPropertyRejectedModel());
    inPropertyApproveModel =
        createModel(context, () => InPropertyApproveModel());
    inPropertyPendingModel =
        createModel(context, () => InPropertyPendingModel());
  }

  @override
  void dispose() {
    inPropertyBlockedModel.dispose();
    inPropertyRejectedModel.dispose();
    inPropertyApproveModel.dispose();
    inPropertyPendingModel.dispose();
  }
}
