import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login/login_widget.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_user_reviews/new_user_reviews_widget.dart';
import '/luxary_homes/users/filter/filter_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/luxary_homes/users/search/search_widget.dart';
import '/luxary_homes/users/user_reviews/user_reviews_widget.dart';
import 'dart:math';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'property_details_widget.dart' show PropertyDetailsWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class PropertyDetailsModel extends FlutterFlowModel<PropertyDetailsWidget> {
  ///  Local state fields for this page.

  String tabs = 'propertyInfo';

  int? propertyId;

  bool? isClearDates = false;

  List<DateTime> emptyList = [];
  void addToEmptyList(DateTime item) => emptyList.add(item);
  void removeFromEmptyList(DateTime item) => emptyList.remove(item);
  void removeAtIndexFromEmptyList(int index) => emptyList.removeAt(index);
  void insertAtIndexInEmptyList(int index, DateTime item) =>
      emptyList.insert(index, item);
  void updateEmptyListAtIndex(int index, Function(DateTime) updateFn) =>
      emptyList[index] = updateFn(emptyList[index]);

  String? heroImage;

  String? selectedAvaialabelFromDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
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
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel6;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel7;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel8;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel9;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel10;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController1;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall1;

  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController2;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall2;

  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel11;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel12;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel13;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel14;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel15;
  // State field(s) for GridView widget.

  PagingController<ApiPagingParams, dynamic>? gridViewPagingController2;
  Function(ApiPagingParams nextPageMarker)? gridViewApiCall2;

  // Model for login_form component.
  late LoginFormModel loginFormModel;

  @override
  void initState(BuildContext context) {
    newTopBarModel = createModel(context, () => NewTopBarModel());
    houseRuleCardModel1 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel2 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel3 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel4 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel5 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel6 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel7 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel8 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel9 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel10 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel11 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel12 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel13 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel14 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel15 = createModel(context, () => HouseRuleCardModel());
    loginFormModel = createModel(context, () => LoginFormModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newTopBarModel.dispose();
    houseRuleCardModel1.dispose();
    houseRuleCardModel2.dispose();
    houseRuleCardModel3.dispose();
    houseRuleCardModel4.dispose();
    houseRuleCardModel5.dispose();
    houseRuleCardModel6.dispose();
    houseRuleCardModel7.dispose();
    houseRuleCardModel8.dispose();
    houseRuleCardModel9.dispose();
    houseRuleCardModel10.dispose();
    listViewPagingController1?.dispose();
    listViewPagingController2?.dispose();
    houseRuleCardModel11.dispose();
    houseRuleCardModel12.dispose();
    houseRuleCardModel13.dispose();
    houseRuleCardModel14.dispose();
    houseRuleCardModel15.dispose();
    gridViewPagingController2?.dispose();
    loginFormModel.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setListViewController1(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewApiCall1 = apiCall;
    return listViewPagingController1 ??= _createListViewController1(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewController1(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(listViewReviewsRatingsPage1);
  }

  void listViewReviewsRatingsPage1(ApiPagingParams nextPageMarker) =>
      listViewApiCall1!(nextPageMarker).then((listViewReviewsRatingsResponse) {
        final pageItems = (getJsonField(
                  listViewReviewsRatingsResponse.jsonBody,
                  r'''$.ratingsReview''',
                ) ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPagingController1?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewReviewsRatingsResponse,
                )
              : null,
        );
      });

  PagingController<ApiPagingParams, dynamic> setListViewController2(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewApiCall2 = apiCall;
    return listViewPagingController2 ??= _createListViewController2(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewController2(
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
      ..addPageRequestListener(listViewPropertyListingWithDatesPage2);
  }

  void listViewPropertyListingWithDatesPage2(ApiPagingParams nextPageMarker) =>
      listViewApiCall2!(nextPageMarker)
          .then((listViewPropertyListingWithDatesResponse) {
        final pageItems = (getJsonField(
                  listViewPropertyListingWithDatesResponse.jsonBody,
                  r'''$.propertyBriefs''',
                ) ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPagingController2?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewPropertyListingWithDatesResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForListView2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (listViewPagingController2?.nextPageKey?.nextPageNumber ?? 0) > 0;
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
