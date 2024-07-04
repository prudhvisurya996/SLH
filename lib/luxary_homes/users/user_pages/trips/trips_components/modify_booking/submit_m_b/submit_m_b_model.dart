import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_pages/trips/trips_components/modify_booking/submit_m_b_form/submit_m_b_form_widget.dart';
import 'submit_m_b_widget.dart' show SubmitMBWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SubmitMBModel extends FlutterFlowModel<SubmitMBWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for submitMBForm component.
  late SubmitMBFormModel submitMBFormModel1;
  // Model for submitMBForm component.
  late SubmitMBFormModel submitMBFormModel2;

  @override
  void initState(BuildContext context) {
    submitMBFormModel1 = createModel(context, () => SubmitMBFormModel());
    submitMBFormModel2 = createModel(context, () => SubmitMBFormModel());
  }

  @override
  void dispose() {
    submitMBFormModel1.dispose();
    submitMBFormModel2.dispose();
  }
}
