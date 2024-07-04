import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/phone_num_login_form/phone_num_login_form_widget.dart';
import 'phone_login_component_widget.dart' show PhoneLoginComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PhoneLoginComponentModel
    extends FlutterFlowModel<PhoneLoginComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for phoneNum_loginForm component.
  late PhoneNumLoginFormModel phoneNumLoginFormModel1;
  // Model for phoneNum_loginForm component.
  late PhoneNumLoginFormModel phoneNumLoginFormModel2;

  @override
  void initState(BuildContext context) {
    phoneNumLoginFormModel1 =
        createModel(context, () => PhoneNumLoginFormModel());
    phoneNumLoginFormModel2 =
        createModel(context, () => PhoneNumLoginFormModel());
  }

  @override
  void dispose() {
    phoneNumLoginFormModel1.dispose();
    phoneNumLoginFormModel2.dispose();
  }
}
