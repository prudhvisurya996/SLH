import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_details_card/new_details_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_property_card/new_property_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_user_reviews/new_user_reviews_widget.dart';
import '/luxary_homes/users/filter/filter_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/luxary_homes/users/search/search_widget.dart';
import '/luxary_homes/users/search_filter_comp/search_filter_comp_widget.dart';
import 'dart:math';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'new_search_page_widget.dart' show NewSearchPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class NewSearchPageModel extends FlutterFlowModel<NewSearchPageWidget> {
  ///  Local state fields for this page.

  String? tabs = 'propertyInfo';

  int? propertyId;

  bool isClearDates = false;

  List<DateTime> emptyList = [];
  void addToEmptyList(DateTime item) => emptyList.add(item);
  void removeFromEmptyList(DateTime item) => emptyList.remove(item);
  void removeAtIndexFromEmptyList(int index) => emptyList.removeAt(index);
  void insertAtIndexInEmptyList(int index, DateTime item) =>
      emptyList.insert(index, item);
  void updateEmptyListAtIndex(int index, Function(DateTime) updateFn) =>
      emptyList[index] = updateFn(emptyList[index]);

  String? heroImage;

  String? bookedDates;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel;
  // Model for search_filter_comp component.
  late SearchFilterCompModel searchFilterCompModel;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  // State field(s) for ListViewWebResults widget.

  PagingController<ApiPagingParams, dynamic>?
      listViewWebResultsPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewWebResultsApiCall;

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel1;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel2;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel3;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel4;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel5;
  // State field(s) for GridView widget.

  PagingController<ApiPagingParams, dynamic>? gridViewPagingController2;
  Function(ApiPagingParams nextPageMarker)? gridViewApiCall2;

  // Model for new_details_card component.
  late NewDetailsCardModel newDetailsCardModel;
  // Model for login_form component.
  late LoginFormModel loginFormModel;

  @override
  void initState(BuildContext context) {
    newTopBarModel = createModel(context, () => NewTopBarModel());
    searchFilterCompModel = createModel(context, () => SearchFilterCompModel());
    houseRuleCardModel1 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel2 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel3 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel4 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel5 = createModel(context, () => HouseRuleCardModel());
    newDetailsCardModel = createModel(context, () => NewDetailsCardModel());
    loginFormModel = createModel(context, () => LoginFormModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newTopBarModel.dispose();
    searchFilterCompModel.dispose();
    listViewPagingController?.dispose();
    listViewWebResultsPagingController?.dispose();
    houseRuleCardModel1.dispose();
    houseRuleCardModel2.dispose();
    houseRuleCardModel3.dispose();
    houseRuleCardModel4.dispose();
    houseRuleCardModel5.dispose();
    gridViewPagingController2?.dispose();
    newDetailsCardModel.dispose();
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

  PagingController<ApiPagingParams, dynamic> setListViewWebResultsController(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewWebResultsApiCall = apiCall;
    return listViewWebResultsPagingController ??=
        _createListViewWebResultsController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic>
      _createListViewWebResultsController(
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
      ..addPageRequestListener(listViewWebResultsSearchFilterAPIPage);
  }

  void listViewWebResultsSearchFilterAPIPage(ApiPagingParams nextPageMarker) =>
      listViewWebResultsApiCall!(nextPageMarker)
          .then((listViewWebResultsSearchFilterAPIResponse) {
        final pageItems = (getJsonField(
                  listViewWebResultsSearchFilterAPIResponse.jsonBody,
                  r'''$.propertyBriefs''',
                ) ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewWebResultsPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewWebResultsSearchFilterAPIResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForListViewWebResults({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (listViewWebResultsPagingController?.nextPageKey?.nextPageNumber ??
                  0) >
              0;
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
