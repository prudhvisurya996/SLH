import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/register_success_form/register_success_form_widget.dart';
import 'register_success_widget.dart' show RegisterSuccessWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterSuccessModel extends FlutterFlowModel<RegisterSuccessWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for register_success_form component.
  late RegisterSuccessFormModel registerSuccessFormModel1;
  // Model for register_success_form component.
  late RegisterSuccessFormModel registerSuccessFormModel2;

  @override
  void initState(BuildContext context) {
    registerSuccessFormModel1 =
        createModel(context, () => RegisterSuccessFormModel());
    registerSuccessFormModel2 =
        createModel(context, () => RegisterSuccessFormModel());
  }

  @override
  void dispose() {
    registerSuccessFormModel1.dispose();
    registerSuccessFormModel2.dispose();
  }
}
