import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/ad_er_msg/ad_er_msg_widget.dart';
import 'lease_assign_widget.dart' show LeaseAssignWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeaseAssignModel extends FlutterFlowModel<LeaseAssignWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ad_er_msg component.
  late AdErMsgModel adErMsgModel;

  @override
  void initState(BuildContext context) {
    adErMsgModel = createModel(context, () => AdErMsgModel());
  }

  @override
  void dispose() {
    adErMsgModel.dispose();
  }
}
