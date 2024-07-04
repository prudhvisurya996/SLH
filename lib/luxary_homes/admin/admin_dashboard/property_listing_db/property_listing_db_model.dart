import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/admin_property_listing/property_approve/property_approve_widget.dart';
import '/luxary_homes/admin/admin_property_listing/property_blocked/property_blocked_widget.dart';
import '/luxary_homes/admin/admin_property_listing/property_pending/property_pending_widget.dart';
import '/luxary_homes/admin/admin_property_listing/property_rejected/property_rejected_widget.dart';
import 'property_listing_db_widget.dart' show PropertyListingDbWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PropertyListingDbModel extends FlutterFlowModel<PropertyListingDbWidget> {
  ///  Local state fields for this component.

  int? propertyStatus = 2;

  int? pageNo = 1;

  int? pageSize = 17;

  ///  State fields for stateful widgets in this component.

  // Model for property_blocked component.
  late PropertyBlockedModel propertyBlockedModel;
  // Model for property_rejected component.
  late PropertyRejectedModel propertyRejectedModel;
  // Model for property_approve component.
  late PropertyApproveModel propertyApproveModel;
  // Model for property_pending component.
  late PropertyPendingModel propertyPendingModel;

  @override
  void initState(BuildContext context) {
    propertyBlockedModel = createModel(context, () => PropertyBlockedModel());
    propertyRejectedModel = createModel(context, () => PropertyRejectedModel());
    propertyApproveModel = createModel(context, () => PropertyApproveModel());
    propertyPendingModel = createModel(context, () => PropertyPendingModel());
  }

  @override
  void dispose() {
    propertyBlockedModel.dispose();
    propertyRejectedModel.dispose();
    propertyApproveModel.dispose();
    propertyPendingModel.dispose();
  }
}
