import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/profile/contact_us_form/contact_us_form_widget.dart';
import 'contact_us_widget.dart' show ContactUsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContactUsModel extends FlutterFlowModel<ContactUsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for contact_us_form component.
  late ContactUsFormModel contactUsFormModel1;
  // Model for contact_us_form component.
  late ContactUsFormModel contactUsFormModel2;

  @override
  void initState(BuildContext context) {
    contactUsFormModel1 = createModel(context, () => ContactUsFormModel());
    contactUsFormModel2 = createModel(context, () => ContactUsFormModel());
  }

  @override
  void dispose() {
    contactUsFormModel1.dispose();
    contactUsFormModel2.dispose();
  }
}
