import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/lease_property_reject/lease_property_reject_form/lease_property_reject_form_widget.dart';
import 'lease_property_reject_widget.dart' show LeasePropertyRejectWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeasePropertyRejectModel
    extends FlutterFlowModel<LeasePropertyRejectWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for leasePropertyReject_form component.
  late LeasePropertyRejectFormModel leasePropertyRejectFormModel;

  @override
  void initState(BuildContext context) {
    leasePropertyRejectFormModel =
        createModel(context, () => LeasePropertyRejectFormModel());
  }

  @override
  void dispose() {
    leasePropertyRejectFormModel.dispose();
  }
}
