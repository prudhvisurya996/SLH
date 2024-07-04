import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/mobile/m_ex_submit_form/m_ex_submit_form_widget.dart';
import 'm_ex_submit_widget.dart' show MExSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MExSubmitModel extends FlutterFlowModel<MExSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for m_ex_submit_form component.
  late MExSubmitFormModel mExSubmitFormModel;

  @override
  void initState(BuildContext context) {
    mExSubmitFormModel = createModel(context, () => MExSubmitFormModel());
  }

  @override
  void dispose() {
    mExSubmitFormModel.dispose();
  }
}
