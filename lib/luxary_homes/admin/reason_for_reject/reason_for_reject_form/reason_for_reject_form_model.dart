import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/admin/reason_for_reject/reason_for_reject_submit/reason_for_reject_submit_widget.dart';
import 'reason_for_reject_form_widget.dart' show ReasonForRejectFormWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReasonForRejectFormModel
    extends FlutterFlowModel<ReasonForRejectFormWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CRTextField widget.
  FocusNode? cRTextFieldFocusNode;
  TextEditingController? cRTextFieldController;
  String? Function(BuildContext, String?)? cRTextFieldControllerValidator;
  String? _cRTextFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'Minimum 5 characters are allowed';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Change Property Status)] action in Button widget.
  ApiCallResponse? changePropertyStatusReject;

  @override
  void initState(BuildContext context) {
    cRTextFieldControllerValidator = _cRTextFieldControllerValidator;
  }

  @override
  void dispose() {
    cRTextFieldFocusNode?.dispose();
    cRTextFieldController?.dispose();
  }
}
