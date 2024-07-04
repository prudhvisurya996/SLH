import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/profile/help_components/contact_us_form_component/contact_us_form_component_widget.dart';
import 'contact_us_component_widget.dart' show ContactUsComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContactUsComponentModel
    extends FlutterFlowModel<ContactUsComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ContactUsFormComponent component.
  late ContactUsFormComponentModel contactUsFormComponentModel1;
  // Model for ContactUsFormComponent component.
  late ContactUsFormComponentModel contactUsFormComponentModel2;

  @override
  void initState(BuildContext context) {
    contactUsFormComponentModel1 =
        createModel(context, () => ContactUsFormComponentModel());
    contactUsFormComponentModel2 =
        createModel(context, () => ContactUsFormComponentModel());
  }

  @override
  void dispose() {
    contactUsFormComponentModel1.dispose();
    contactUsFormComponentModel2.dispose();
  }
}
