import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/property_inspector/pi_error_msg/pi_error_msg_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'assigned_tasks_widget.dart' show AssignedTasksWidget;
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AssignedTasksModel extends FlutterFlowModel<AssignedTasksWidget> {
  ///  State fields for stateful widgets in this component.

  Completer<ApiCallResponse>? apiRequestCompleter;
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

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
