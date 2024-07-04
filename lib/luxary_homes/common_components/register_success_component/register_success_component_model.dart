import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/register_success_form_component/register_success_form_component_widget.dart';
import 'register_success_component_widget.dart'
    show RegisterSuccessComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterSuccessComponentModel
    extends FlutterFlowModel<RegisterSuccessComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for RegisterSuccessFormComponent component.
  late RegisterSuccessFormComponentModel registerSuccessFormComponentModel1;
  // Model for RegisterSuccessFormComponent component.
  late RegisterSuccessFormComponentModel registerSuccessFormComponentModel2;

  @override
  void initState(BuildContext context) {
    registerSuccessFormComponentModel1 =
        createModel(context, () => RegisterSuccessFormComponentModel());
    registerSuccessFormComponentModel2 =
        createModel(context, () => RegisterSuccessFormComponentModel());
  }

  @override
  void dispose() {
    registerSuccessFormComponentModel1.dispose();
    registerSuccessFormComponentModel2.dispose();
  }
}
