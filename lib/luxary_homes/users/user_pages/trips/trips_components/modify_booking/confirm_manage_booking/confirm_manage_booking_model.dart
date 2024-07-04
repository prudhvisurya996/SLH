import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_pages/trips/trips_components/modify_booking/confirm_manage_booking_form_m/confirm_manage_booking_form_m_widget.dart';
import '/luxary_homes/users/user_pages/trips/trips_components/modify_booking/confirm_manage_booking_form_w/confirm_manage_booking_form_w_widget.dart';
import 'confirm_manage_booking_widget.dart' show ConfirmManageBookingWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfirmManageBookingModel
    extends FlutterFlowModel<ConfirmManageBookingWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for confirmManageBookingForm_m component.
  late ConfirmManageBookingFormMModel confirmManageBookingFormMModel;
  // Model for confirmManageBookingForm_w component.
  late ConfirmManageBookingFormWModel confirmManageBookingFormWModel;

  @override
  void initState(BuildContext context) {
    confirmManageBookingFormMModel =
        createModel(context, () => ConfirmManageBookingFormMModel());
    confirmManageBookingFormWModel =
        createModel(context, () => ConfirmManageBookingFormWModel());
  }

  @override
  void dispose() {
    confirmManageBookingFormMModel.dispose();
    confirmManageBookingFormWModel.dispose();
  }
}
