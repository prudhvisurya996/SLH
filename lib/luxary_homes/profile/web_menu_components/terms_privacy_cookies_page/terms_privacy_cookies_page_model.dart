import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/request_manager.dart';

import 'terms_privacy_cookies_page_widget.dart'
    show TermsPrivacyCookiesPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TermsPrivacyCookiesPageModel
    extends FlutterFlowModel<TermsPrivacyCookiesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for WebBottomCopyWrite component.
  late WebBottomCopyWriteModel webBottomCopyWriteModel;

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
    webBottomCopyWriteModel =
        createModel(context, () => WebBottomCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    webBottomCopyWriteModel.dispose();

    /// Dispose query cache managers for this widget.

    clearTpcCache();
  }
}
