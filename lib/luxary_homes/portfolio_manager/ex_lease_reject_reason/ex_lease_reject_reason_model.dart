import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/ex_lease_reject_form/ex_lease_reject_form_widget.dart';
import 'ex_lease_reject_reason_widget.dart' show ExLeaseRejectReasonWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExLeaseRejectReasonModel
    extends FlutterFlowModel<ExLeaseRejectReasonWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ex_lease_reject_form component.
  late ExLeaseRejectFormModel exLeaseRejectFormModel;

  @override
  void initState(BuildContext context) {
    exLeaseRejectFormModel =
        createModel(context, () => ExLeaseRejectFormModel());
  }

  @override
  void dispose() {
    exLeaseRejectFormModel.dispose();
  }
}
