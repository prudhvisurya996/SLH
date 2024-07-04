import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/property_inspector/pi_reject_form/pi_reject_form_widget.dart';
import 'pi_reject_widget.dart' show PiRejectWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PiRejectModel extends FlutterFlowModel<PiRejectWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for pi_reject_form component.
  late PiRejectFormModel piRejectFormModel1;
  // Model for pi_reject_form component.
  late PiRejectFormModel piRejectFormModel2;

  @override
  void initState(BuildContext context) {
    piRejectFormModel1 = createModel(context, () => PiRejectFormModel());
    piRejectFormModel2 = createModel(context, () => PiRejectFormModel());
  }

  @override
  void dispose() {
    piRejectFormModel1.dispose();
    piRejectFormModel2.dispose();
  }
}
