import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/admin/assign_property/assign_property/assign_property_widget.dart';
import '/luxary_homes/admin/lease_property_reject/lease_property_reject_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/host_information/ex_hostdetails/ex_hostdetails_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'lease_request_view_widget.dart' show LeaseRequestViewWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeaseRequestViewModel extends FlutterFlowModel<LeaseRequestViewWidget> {
  ///  Local state fields for this component.

  FFUploadedFile? file1;

  String? fileURL;

  ///  State fields for stateful widgets in this component.

  // Model for ExHostdetails component.
  late ExHostdetailsModel exHostdetailsModel;

  @override
  void initState(BuildContext context) {
    exHostdetailsModel = createModel(context, () => ExHostdetailsModel());
  }

  @override
  void dispose() {
    exHostdetailsModel.dispose();
  }
}
