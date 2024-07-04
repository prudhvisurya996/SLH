import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/modify_booking_confirm_form/modify_booking_confirm_form_widget.dart';
import '/luxary_homes/users/w_modify_booking_confirm/w_modify_booking_confirm_widget.dart';
import 'modify_booking_confirm_widget.dart' show ModifyBookingConfirmWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModifyBookingConfirmModel
    extends FlutterFlowModel<ModifyBookingConfirmWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for modify_booking_confirm_form component.
  late ModifyBookingConfirmFormModel modifyBookingConfirmFormModel;
  // Model for w_modify_booking_confirm component.
  late WModifyBookingConfirmModel wModifyBookingConfirmModel;

  @override
  void initState(BuildContext context) {
    modifyBookingConfirmFormModel =
        createModel(context, () => ModifyBookingConfirmFormModel());
    wModifyBookingConfirmModel =
        createModel(context, () => WModifyBookingConfirmModel());
  }

  @override
  void dispose() {
    modifyBookingConfirmFormModel.dispose();
    wModifyBookingConfirmModel.dispose();
  }
}
