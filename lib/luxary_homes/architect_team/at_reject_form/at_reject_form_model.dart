import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/property_inspector/pi_property_rejected/pi_property_rejected_widget.dart';
import 'at_reject_form_widget.dart' show AtRejectFormWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtRejectFormModel extends FlutterFlowModel<AtRejectFormWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CRTextField widget.
  FocusNode? cRTextFieldFocusNode;
  TextEditingController? cRTextFieldTextController;
  String? Function(BuildContext, String?)? cRTextFieldTextControllerValidator;
  String? _cRTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'Minimum 5 characters are allowed';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshRespForPIUpdateStatus;
  // Stores action output result for [Backend Call - API (PI Status Update)] action in Button widget.
  ApiCallResponse? piStatusUpdateRespReject;

  @override
  void initState(BuildContext context) {
    cRTextFieldTextControllerValidator = _cRTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    cRTextFieldFocusNode?.dispose();
    cRTextFieldTextController?.dispose();
  }
}
