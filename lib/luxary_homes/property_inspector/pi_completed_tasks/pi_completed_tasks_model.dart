import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/property_inspector/pi_error_msg/pi_error_msg_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'pi_completed_tasks_widget.dart' show PiCompletedTasksWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PiCompletedTasksModel extends FlutterFlowModel<PiCompletedTasksWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for pi_error_msg component.
  late PiErrorMsgModel piErrorMsgModel;

  @override
  void initState(BuildContext context) {
    piErrorMsgModel = createModel(context, () => PiErrorMsgModel());
  }

  @override
  void dispose() {
    piErrorMsgModel.dispose();
  }
}
