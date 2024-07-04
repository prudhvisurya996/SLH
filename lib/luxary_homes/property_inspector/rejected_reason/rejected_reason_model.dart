import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'rejected_reason_widget.dart' show RejectedReasonWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RejectedReasonModel extends FlutterFlowModel<RejectedReasonWidget> {
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
