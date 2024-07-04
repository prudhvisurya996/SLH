import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/homepage_new_web_screens/trips/new_details_card_for_trips/new_details_card_for_trips_widget.dart';
import '/luxary_homes/homepage_new_web_screens/trips/new_trips_error_comp/new_trips_error_comp_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'new_cancelled_trips_widget.dart' show NewCancelledTripsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class NewCancelledTripsModel extends FlutterFlowModel<NewCancelledTripsWidget> {
  ///  Local state fields for this component.

  String? tabs = 'bookingInfo';

  String? bookingId;

  int? index = 0;

  String? heroImage;

  ///  State fields for stateful widgets in this component.

  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  // Model for new_details_card_for_trips component.
  late NewDetailsCardForTripsModel newDetailsCardForTripsModel;
  // Model for new_trips_error_comp component.
  late NewTripsErrorCompModel newTripsErrorCompModel;

  @override
  void initState(BuildContext context) {
    newDetailsCardForTripsModel =
        createModel(context, () => NewDetailsCardForTripsModel());
    newTripsErrorCompModel =
        createModel(context, () => NewTripsErrorCompModel());
  }

  @override
  void dispose() {
    listViewPagingController?.dispose();
    newDetailsCardForTripsModel.dispose();
    newTripsErrorCompModel.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setListViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewApiCall = apiCall;
    return listViewPagingController ??= _createListViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(listViewTripsDetailPage);
  }

  void listViewTripsDetailPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker).then((listViewTripsDetailResponse) {
        final pageItems = (getJsonField(
                  listViewTripsDetailResponse.jsonBody,
                  r'''$.bookingsList''',
                ) ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewTripsDetailResponse,
                )
              : null,
        );
      });
}
