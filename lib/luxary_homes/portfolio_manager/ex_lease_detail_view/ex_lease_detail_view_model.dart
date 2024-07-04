import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/external_host_journey/ex_host_details/ex_host_details_widget.dart';
import '/luxary_homes/portfolio_manager/assign_to_a_t/assign_at/assign_at_widget.dart';
import '/luxary_homes/portfolio_manager/assign_to_p_i/assign_pi/assign_pi_widget.dart';
import '/luxary_homes/portfolio_manager/ex_lease_reject_reason/ex_lease_reject_reason_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'ex_lease_detail_view_widget.dart' show ExLeaseDetailViewWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExLeaseDetailViewModel extends FlutterFlowModel<ExLeaseDetailViewWidget> {
  ///  Local state fields for this component.

  FFUploadedFile? file1;

  String? fileURL;

  ///  State fields for stateful widgets in this component.

  // Model for ex_host_details component.
  late ExHostDetailsModel exHostDetailsModel;

  @override
  void initState(BuildContext context) {
    exHostDetailsModel = createModel(context, () => ExHostDetailsModel());
  }

  @override
  void dispose() {
    exHostDetailsModel.dispose();
  }
}
