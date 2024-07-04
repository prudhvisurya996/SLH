import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/homepage_new_web_screens/new_trips_card/new_trips_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_user_reviews/new_user_reviews_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'new_cancelled_trips_widget.dart' show NewCancelledTripsWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class NewCancelledTripsModel extends FlutterFlowModel<NewCancelledTripsWidget> {
  ///  Local state fields for this component.

  String? tabs = 'propertyInfo';

  String? bookingId;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for GridView widget.

  PagingController<ApiPagingParams, dynamic>? gridViewPagingController2;
  Function(ApiPagingParams nextPageMarker)? gridViewApiCall2;

  // Model for new_trips_card component.
  late NewTripsCardModel newTripsCardModel;

  @override
  void initState(BuildContext context) {
    newTripsCardModel = createModel(context, () => NewTripsCardModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    gridViewPagingController2?.dispose();
    newTripsCardModel.dispose();
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

  PagingController<ApiPagingParams, dynamic> setGridViewController2(
    Function(ApiPagingParams) apiCall,
  ) {
    gridViewApiCall2 = apiCall;
    return gridViewPagingController2 ??= _createGridViewController2(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createGridViewController2(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(gridViewReviewsRatingsPage2);
  }

  void gridViewReviewsRatingsPage2(ApiPagingParams nextPageMarker) =>
      gridViewApiCall2!(nextPageMarker).then((gridViewReviewsRatingsResponse) {
        final pageItems = (getJsonField(
                  gridViewReviewsRatingsResponse.jsonBody,
                  r'''$.ratingsReview''',
                ) ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        gridViewPagingController2?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: gridViewReviewsRatingsResponse,
                )
              : null,
        );
      });
}
