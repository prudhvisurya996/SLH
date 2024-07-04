import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/property_hosting/mobile/m_request_submit_form/m_request_submit_form_widget.dart';
import 'm_request_submit_widget.dart' show MRequestSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MRequestSubmitModel extends FlutterFlowModel<MRequestSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for m_request_submit_form component.
  late MRequestSubmitFormModel mRequestSubmitFormModel;

  @override
  void initState(BuildContext context) {
    mRequestSubmitFormModel =
        createModel(context, () => MRequestSubmitFormModel());
  }

  @override
  void dispose() {
    mRequestSubmitFormModel.dispose();
  }
}
