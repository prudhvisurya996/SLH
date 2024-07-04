import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/forgot_success_component/forgot_success_component_widget.dart';
import 'forgot_psw_success_component_widget.dart'
    show ForgotPswSuccessComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPswSuccessComponentModel
    extends FlutterFlowModel<ForgotPswSuccessComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ForgotSuccessComponent component.
  late ForgotSuccessComponentModel forgotSuccessComponentModel1;
  // Model for ForgotSuccessComponent component.
  late ForgotSuccessComponentModel forgotSuccessComponentModel2;

  @override
  void initState(BuildContext context) {
    forgotSuccessComponentModel1 =
        createModel(context, () => ForgotSuccessComponentModel());
    forgotSuccessComponentModel2 =
        createModel(context, () => ForgotSuccessComponentModel());
  }

  @override
  void dispose() {
    forgotSuccessComponentModel1.dispose();
    forgotSuccessComponentModel2.dispose();
  }
}
