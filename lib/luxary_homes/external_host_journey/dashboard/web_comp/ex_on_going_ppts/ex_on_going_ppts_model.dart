import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/dashboard/web_comp/ad_lse_er_msg/ad_lse_er_msg_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'ex_on_going_ppts_widget.dart' show ExOnGoingPptsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExOnGoingPptsModel extends FlutterFlowModel<ExOnGoingPptsWidget> {
  ///  State fields for stateful widgets in this component.

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for ad_lse_er_msg component.
  late AdLseErMsgModel adLseErMsgModel;

  @override
  void initState(BuildContext context) {
    adLseErMsgModel = createModel(context, () => AdLseErMsgModel());
  }

  @override
  void dispose() {
    adLseErMsgModel.dispose();
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
