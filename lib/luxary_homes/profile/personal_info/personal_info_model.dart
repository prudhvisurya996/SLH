import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/profile/personal_info_form/personal_info_form_widget.dart';
import 'personal_info_widget.dart' show PersonalInfoWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PersonalInfoModel extends FlutterFlowModel<PersonalInfoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for personal_info_form component.
  late PersonalInfoFormModel personalInfoFormModel1;
  // Model for personal_info_form component.
  late PersonalInfoFormModel personalInfoFormModel2;

  @override
  void initState(BuildContext context) {
    personalInfoFormModel1 =
        createModel(context, () => PersonalInfoFormModel());
    personalInfoFormModel2 =
        createModel(context, () => PersonalInfoFormModel());
  }

  @override
  void dispose() {
    personalInfoFormModel1.dispose();
    personalInfoFormModel2.dispose();
  }
}
