import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/property_hosting/submit_confirm_form/submit_confirm_form_widget.dart';
import 'submit_confirm_widget.dart' show SubmitConfirmWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SubmitConfirmModel extends FlutterFlowModel<SubmitConfirmWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for submit_confirm_form component.
  late SubmitConfirmFormModel submitConfirmFormModel;

  @override
  void initState(BuildContext context) {
    submitConfirmFormModel =
        createModel(context, () => SubmitConfirmFormModel());
  }

  @override
  void dispose() {
    submitConfirmFormModel.dispose();
  }
}
