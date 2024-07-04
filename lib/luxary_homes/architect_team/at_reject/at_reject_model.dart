import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/architect_team/at_reject_form/at_reject_form_widget.dart';
import 'at_reject_widget.dart' show AtRejectWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtRejectModel extends FlutterFlowModel<AtRejectWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for at_reject_form component.
  late AtRejectFormModel atRejectFormModel1;
  // Model for at_reject_form component.
  late AtRejectFormModel atRejectFormModel2;

  @override
  void initState(BuildContext context) {
    atRejectFormModel1 = createModel(context, () => AtRejectFormModel());
    atRejectFormModel2 = createModel(context, () => AtRejectFormModel());
  }

  @override
  void dispose() {
    atRejectFormModel1.dispose();
    atRejectFormModel2.dispose();
  }
}
