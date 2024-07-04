import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/pm_error_comp/pm_error_comp_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'w_pending_properties_widget.dart' show WPendingPropertiesWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class WPendingPropertiesModel
    extends FlutterFlowModel<WPendingPropertiesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for StaggeredView widget.

  PagingController<ApiPagingParams, dynamic>? staggeredViewPagingController;
  Function(ApiPagingParams nextPageMarker)? staggeredViewApiCall;

  // Model for pm_error_comp component.
  late PmErrorCompModel pmErrorCompModel;

  @override
  void initState(BuildContext context) {
    pmErrorCompModel = createModel(context, () => PmErrorCompModel());
  }

  @override
  void dispose() {
    staggeredViewPagingController?.dispose();
    pmErrorCompModel.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setStaggeredViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    staggeredViewApiCall = apiCall;
    return staggeredViewPagingController ??=
        _createStaggeredViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createStaggeredViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller
      ..addPageRequestListener(staggeredViewHostPropertyListsPage);
  }

  void staggeredViewHostPropertyListsPage(ApiPagingParams nextPageMarker) =>
      staggeredViewApiCall!(nextPageMarker)
          .then((staggeredViewHostPropertyListsResponse) {
        final pageItems = (getJsonField(
                  staggeredViewHostPropertyListsResponse.jsonBody,
                  r'''$.statusPropertyBriefs''',
                ) ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        staggeredViewPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: staggeredViewHostPropertyListsResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForStaggeredView({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (staggeredViewPagingController?.nextPageKey?.nextPageNumber ?? 0) > 0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
