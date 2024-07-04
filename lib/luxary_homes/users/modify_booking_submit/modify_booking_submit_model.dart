import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/modify_booking_submit_form/modify_booking_submit_form_widget.dart';
import 'modify_booking_submit_widget.dart' show ModifyBookingSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModifyBookingSubmitModel
    extends FlutterFlowModel<ModifyBookingSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for modify_booking_submit_form component.
  late ModifyBookingSubmitFormModel modifyBookingSubmitFormModel1;
  // Model for modify_booking_submit_form component.
  late ModifyBookingSubmitFormModel modifyBookingSubmitFormModel2;

  @override
  void initState(BuildContext context) {
    modifyBookingSubmitFormModel1 =
        createModel(context, () => ModifyBookingSubmitFormModel());
    modifyBookingSubmitFormModel2 =
        createModel(context, () => ModifyBookingSubmitFormModel());
  }

  @override
  void dispose() {
    modifyBookingSubmitFormModel1.dispose();
    modifyBookingSubmitFormModel2.dispose();
  }
}
