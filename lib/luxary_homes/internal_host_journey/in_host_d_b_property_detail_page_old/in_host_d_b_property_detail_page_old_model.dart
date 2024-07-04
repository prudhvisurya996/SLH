import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/host_property_details_components/reason_compo/reason_compo_widget.dart';
import '/luxary_homes/property_description/property_description_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'in_host_d_b_property_detail_page_old_widget.dart'
    show InHostDBPropertyDetailPageOldWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InHostDBPropertyDetailPageOldModel
    extends FlutterFlowModel<InHostDBPropertyDetailPageOldWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for reason_compo component.
  late ReasonCompoModel reasonCompoModel1;
  // Model for property_description component.
  late PropertyDescriptionModel propertyDescriptionModel1;
  // Model for reason_compo component.
  late ReasonCompoModel reasonCompoModel2;
  // Model for property_description component.
  late PropertyDescriptionModel propertyDescriptionModel2;
  // Model for WebBottomCopyWrite component.
  late WebBottomCopyWriteModel webBottomCopyWriteModel;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    reasonCompoModel1 = createModel(context, () => ReasonCompoModel());
    propertyDescriptionModel1 =
        createModel(context, () => PropertyDescriptionModel());
    reasonCompoModel2 = createModel(context, () => ReasonCompoModel());
    propertyDescriptionModel2 =
        createModel(context, () => PropertyDescriptionModel());
    webBottomCopyWriteModel =
        createModel(context, () => WebBottomCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    reasonCompoModel1.dispose();
    propertyDescriptionModel1.dispose();
    reasonCompoModel2.dispose();
    propertyDescriptionModel2.dispose();
    webBottomCopyWriteModel.dispose();
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
