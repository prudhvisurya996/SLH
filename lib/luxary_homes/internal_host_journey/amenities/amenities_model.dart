import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'amenities_widget.dart' show AmenitiesWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AmenitiesModel extends FlutterFlowModel<AmenitiesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Query cache managers for this widget.

  final _amenitiesCacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> amenitiesCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _amenitiesCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAmenitiesCacheCache() => _amenitiesCacheManager.clear();
  void clearAmenitiesCacheCacheKey(String? uniqueKey) =>
      _amenitiesCacheManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();

    /// Dispose query cache managers for this widget.

    clearAmenitiesCacheCache();
  }
}
