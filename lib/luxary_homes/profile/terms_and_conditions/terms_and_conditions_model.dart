import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/request_manager.dart';

import 'terms_and_conditions_widget.dart' show TermsAndConditionsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TermsAndConditionsModel
    extends FlutterFlowModel<TermsAndConditionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for web_copy_write component.
  late WebCopyWriteModel webCopyWriteModel;

  /// Query cache managers for this widget.

  final _tpcManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> tpc({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _tpcManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTpcCache() => _tpcManager.clear();
  void clearTpcCacheKey(String? uniqueKey) =>
      _tpcManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    webCopyWriteModel = createModel(context, () => WebCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    webCopyWriteModel.dispose();

    /// Dispose query cache managers for this widget.

    clearTpcCache();
  }
}
