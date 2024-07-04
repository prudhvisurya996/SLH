import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/register_form_component/register_form_component_widget.dart';
import 'register_component_widget.dart' show RegisterComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterComponentModel extends FlutterFlowModel<RegisterComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for RegisterFormComponent component.
  late RegisterFormComponentModel registerFormComponentModel1;
  // Model for RegisterFormComponent component.
  late RegisterFormComponentModel registerFormComponentModel2;

  @override
  void initState(BuildContext context) {
    registerFormComponentModel1 =
        createModel(context, () => RegisterFormComponentModel());
    registerFormComponentModel2 =
        createModel(context, () => RegisterFormComponentModel());
  }

  @override
  void dispose() {
    registerFormComponentModel1.dispose();
    registerFormComponentModel2.dispose();
  }
}
