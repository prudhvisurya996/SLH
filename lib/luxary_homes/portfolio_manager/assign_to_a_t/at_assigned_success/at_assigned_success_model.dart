import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/assign_to_a_t/at_success_form/at_success_form_widget.dart';
import 'at_assigned_success_widget.dart' show AtAssignedSuccessWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtAssignedSuccessModel extends FlutterFlowModel<AtAssignedSuccessWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for at_success_form component.
  late AtSuccessFormModel atSuccessFormModel;

  @override
  void initState(BuildContext context) {
    atSuccessFormModel = createModel(context, () => AtSuccessFormModel());
  }

  @override
  void dispose() {
    atSuccessFormModel.dispose();
  }
}
