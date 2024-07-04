import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/property_hosting/w_request_submit_form/w_request_submit_form_widget.dart';
import 'w_request_submit_widget.dart' show WRequestSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WRequestSubmitModel extends FlutterFlowModel<WRequestSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for w_request_submit_form component.
  late WRequestSubmitFormModel wRequestSubmitFormModel;

  @override
  void initState(BuildContext context) {
    wRequestSubmitFormModel =
        createModel(context, () => WRequestSubmitFormModel());
  }

  @override
  void dispose() {
    wRequestSubmitFormModel.dispose();
  }
}
