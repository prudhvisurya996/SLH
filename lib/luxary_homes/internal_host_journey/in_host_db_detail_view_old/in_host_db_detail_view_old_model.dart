import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/internal_host_journey/in_reason_compo/in_reason_compo_widget.dart';
import '/luxary_homes/users/property_description/property_description_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'in_host_db_detail_view_old_widget.dart'
    show InHostDbDetailViewOldWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InHostDbDetailViewOldModel
    extends FlutterFlowModel<InHostDbDetailViewOldWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for in_reason_compo component.
  late InReasonCompoModel inReasonCompoModel1;
  // Model for property_description component.
  late PropertyDescriptionModel propertyDescriptionModel1;
  // Model for in_reason_compo component.
  late InReasonCompoModel inReasonCompoModel2;
  // Model for property_description component.
  late PropertyDescriptionModel propertyDescriptionModel2;
  // Model for web_copy_write component.
  late WebCopyWriteModel webCopyWriteModel;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    inReasonCompoModel1 = createModel(context, () => InReasonCompoModel());
    propertyDescriptionModel1 =
        createModel(context, () => PropertyDescriptionModel());
    inReasonCompoModel2 = createModel(context, () => InReasonCompoModel());
    propertyDescriptionModel2 =
        createModel(context, () => PropertyDescriptionModel());
    webCopyWriteModel = createModel(context, () => WebCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    inReasonCompoModel1.dispose();
    propertyDescriptionModel1.dispose();
    inReasonCompoModel2.dispose();
    propertyDescriptionModel2.dispose();
    webCopyWriteModel.dispose();
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
