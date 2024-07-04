import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/lease_property_reject/lease_property_reject_submit_form/lease_property_reject_submit_form_widget.dart';
import 'lease_property_reject_submit_widget.dart'
    show LeasePropertyRejectSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeasePropertyRejectSubmitModel
    extends FlutterFlowModel<LeasePropertyRejectSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for LeasePropertyRejectSubmitForm component.
  late LeasePropertyRejectSubmitFormModel leasePropertyRejectSubmitFormModel;

  @override
  void initState(BuildContext context) {
    leasePropertyRejectSubmitFormModel =
        createModel(context, () => LeasePropertyRejectSubmitFormModel());
  }

  @override
  void dispose() {
    leasePropertyRejectSubmitFormModel.dispose();
  }
}
