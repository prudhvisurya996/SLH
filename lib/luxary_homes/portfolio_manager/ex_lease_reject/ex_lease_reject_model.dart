import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/pm_error_comp/pm_error_comp_widget.dart';
import 'ex_lease_reject_widget.dart' show ExLeaseRejectWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExLeaseRejectModel extends FlutterFlowModel<ExLeaseRejectWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for pm_error_comp component.
  late PmErrorCompModel pmErrorCompModel;

  @override
  void initState(BuildContext context) {
    pmErrorCompModel = createModel(context, () => PmErrorCompModel());
  }

  @override
  void dispose() {
    pmErrorCompModel.dispose();
  }
}
