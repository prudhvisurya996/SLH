import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/profile/personal_information_components/personal_information_form_component/personal_information_form_component_widget.dart';
import 'personal_information_component_widget.dart'
    show PersonalInformationComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PersonalInformationComponentModel
    extends FlutterFlowModel<PersonalInformationComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for PersonalInformationFormComponent component.
  late PersonalInformationFormComponentModel
      personalInformationFormComponentModel1;
  // Model for PersonalInformationFormComponent component.
  late PersonalInformationFormComponentModel
      personalInformationFormComponentModel2;

  @override
  void initState(BuildContext context) {
    personalInformationFormComponentModel1 =
        createModel(context, () => PersonalInformationFormComponentModel());
    personalInformationFormComponentModel2 =
        createModel(context, () => PersonalInformationFormComponentModel());
  }

  @override
  void dispose() {
    personalInformationFormComponentModel1.dispose();
    personalInformationFormComponentModel2.dispose();
  }
}
