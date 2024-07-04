import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/assign_to_p_i/pi_success_form/pi_success_form_widget.dart';
import 'pi_assigned_success_widget.dart' show PiAssignedSuccessWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PiAssignedSuccessModel extends FlutterFlowModel<PiAssignedSuccessWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for pi_success_form component.
  late PiSuccessFormModel piSuccessFormModel;

  @override
  void initState(BuildContext context) {
    piSuccessFormModel = createModel(context, () => PiSuccessFormModel());
  }

  @override
  void dispose() {
    piSuccessFormModel.dispose();
  }
}
