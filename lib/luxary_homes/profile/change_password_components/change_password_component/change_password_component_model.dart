import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/profile/change_password_components/change_password_form_component/change_password_form_component_widget.dart';
import 'change_password_component_widget.dart'
    show ChangePasswordComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangePasswordComponentModel
    extends FlutterFlowModel<ChangePasswordComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ChangePasswordFormComponent component.
  late ChangePasswordFormComponentModel changePasswordFormComponentModel1;
  // Model for ChangePasswordFormComponent component.
  late ChangePasswordFormComponentModel changePasswordFormComponentModel2;

  @override
  void initState(BuildContext context) {
    changePasswordFormComponentModel1 =
        createModel(context, () => ChangePasswordFormComponentModel());
    changePasswordFormComponentModel2 =
        createModel(context, () => ChangePasswordFormComponentModel());
  }

  @override
  void dispose() {
    changePasswordFormComponentModel1.dispose();
    changePasswordFormComponentModel2.dispose();
  }
}
