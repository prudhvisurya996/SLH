import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/ex_lease_reject_submit_form/ex_lease_reject_submit_form_widget.dart';
import 'ex_lease_reject_submit_widget.dart' show ExLeaseRejectSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExLeaseRejectSubmitModel
    extends FlutterFlowModel<ExLeaseRejectSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ex_lease_reject_submit_form component.
  late ExLeaseRejectSubmitFormModel exLeaseRejectSubmitFormModel;

  @override
  void initState(BuildContext context) {
    exLeaseRejectSubmitFormModel =
        createModel(context, () => ExLeaseRejectSubmitFormModel());
  }

  @override
  void dispose() {
    exLeaseRejectSubmitFormModel.dispose();
  }
}
