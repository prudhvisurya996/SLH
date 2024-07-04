import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/assign_property/p_i_assign_success_form/p_i_assign_success_form_widget.dart';
import 'p_i_assigned_success_widget.dart' show PIAssignedSuccessWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PIAssignedSuccessModel extends FlutterFlowModel<PIAssignedSuccessWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for PI_assign_Success_form component.
  late PIAssignSuccessFormModel pIAssignSuccessFormModel;

  @override
  void initState(BuildContext context) {
    pIAssignSuccessFormModel =
        createModel(context, () => PIAssignSuccessFormModel());
  }

  @override
  void dispose() {
    pIAssignSuccessFormModel.dispose();
  }
}
