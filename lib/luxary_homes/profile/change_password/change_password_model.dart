import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/profile/change_password_form/change_password_form_widget.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for change_password_form component.
  late ChangePasswordFormModel changePasswordFormModel1;
  // Model for change_password_form component.
  late ChangePasswordFormModel changePasswordFormModel2;

  @override
  void initState(BuildContext context) {
    changePasswordFormModel1 =
        createModel(context, () => ChangePasswordFormModel());
    changePasswordFormModel2 =
        createModel(context, () => ChangePasswordFormModel());
  }

  @override
  void dispose() {
    changePasswordFormModel1.dispose();
    changePasswordFormModel2.dispose();
  }
}
