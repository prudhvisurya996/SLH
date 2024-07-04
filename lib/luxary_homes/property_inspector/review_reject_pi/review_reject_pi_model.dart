import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/property_inspector/reject_form_pi/reject_form_pi_widget.dart';
import 'review_reject_pi_widget.dart' show ReviewRejectPiWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewRejectPiModel extends FlutterFlowModel<ReviewRejectPiWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Reject_form_pi component.
  late RejectFormPiModel rejectFormPiModel;

  @override
  void initState(BuildContext context) {
    rejectFormPiModel = createModel(context, () => RejectFormPiModel());
  }

  @override
  void dispose() {
    rejectFormPiModel.dispose();
  }
}
