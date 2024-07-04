import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/portfolio_manager/approval_submit/approval_submit_widget.dart';
import 'approval_form_widget.dart' show ApprovalFormWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApprovalFormModel extends FlutterFlowModel<ApprovalFormWidget> {
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

  // Stores action output result for [Backend Call - API (Change Property Status By PM)] action in Button widget.
  ApiCallResponse? changePropertyStatusApprove;

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
