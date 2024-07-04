import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_property_card/new_property_card_widget.dart';
import '/luxary_homes/users/search_filter_comp/search_filter_comp_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  Local state fields for this page.

  bool? isClicked = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel;
  // Model for search_filter_comp component.
  late SearchFilterCompModel searchFilterCompModel;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  // State field(s) for StaggeredView widget.

  PagingController<ApiPagingParams, dynamic>? staggeredViewPagingController;
  Function(ApiPagingParams nextPageMarker)? staggeredViewApiCall;

  // Model for web_copy_write component.
  late WebCopyWriteModel webCopyWriteModel;
  // Model for login_form component.
  late LoginFormModel loginFormModel;

  @override
  void initState(BuildContext context) {
    newTopBarModel = createModel(context, () => NewTopBarModel());
    searchFilterCompModel = createModel(context, () => SearchFilterCompModel());
    webCopyWriteModel = createModel(context, () => WebCopyWriteModel());
    loginFormModel = createModel(context, () => LoginFormModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newTopBarModel.dispose();
    searchFilterCompModel.dispose();
    listViewPagingController?.dispose();
    staggeredViewPagingController?.dispose();
    webCopyWriteModel.dispose();
    loginFormModel.dispose();
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
    return controller..addPageRequestListener(listViewSearchFilterAPIPage);
  }

  void listViewSearchFilterAPIPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker).then((listViewSearchFilterAPIResponse) {
        final pageItems = (getJsonField(
                  listViewSearchFilterAPIResponse.jsonBody,
                  r'''$.propertyBriefs''',
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
                  lastResponse: listViewSearchFilterAPIResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForListView({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (listViewPagingController?.nextPageKey?.nextPageNumber ?? 0) > 0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

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
    return controller..addPageRequestListener(staggeredViewSearchFilterAPIPage);
  }

  void staggeredViewSearchFilterAPIPage(ApiPagingParams nextPageMarker) =>
      staggeredViewApiCall!(nextPageMarker)
          .then((staggeredViewSearchFilterAPIResponse) {
        final pageItems = (getJsonField(
                  staggeredViewSearchFilterAPIResponse.jsonBody,
                  r'''$.propertyBriefs''',
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
                  lastResponse: staggeredViewSearchFilterAPIResponse,
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
