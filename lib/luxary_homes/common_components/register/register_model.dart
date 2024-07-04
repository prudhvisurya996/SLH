import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/register_form/register_form_widget.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for register_form component.
  late RegisterFormModel registerFormModel1;
  // Model for register_form component.
  late RegisterFormModel registerFormModel2;

  @override
  void initState(BuildContext context) {
    registerFormModel1 = createModel(context, () => RegisterFormModel());
    registerFormModel2 = createModel(context, () => RegisterFormModel());
  }

  @override
  void dispose() {
    registerFormModel1.dispose();
    registerFormModel2.dispose();
  }
}
