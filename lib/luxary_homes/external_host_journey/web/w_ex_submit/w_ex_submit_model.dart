import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/web/w_ex_submit_form/w_ex_submit_form_widget.dart';
import 'w_ex_submit_widget.dart' show WExSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WExSubmitModel extends FlutterFlowModel<WExSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for w_ex_submit_form component.
  late WExSubmitFormModel wExSubmitFormModel;

  @override
  void initState(BuildContext context) {
    wExSubmitFormModel = createModel(context, () => WExSubmitFormModel());
  }

  @override
  void dispose() {
    wExSubmitFormModel.dispose();
  }
}
