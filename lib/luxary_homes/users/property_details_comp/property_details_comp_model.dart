import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_details_card/new_details_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_user_reviews/new_user_reviews_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'property_details_comp_widget.dart' show PropertyDetailsCompWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class PropertyDetailsCompModel
    extends FlutterFlowModel<PropertyDetailsCompWidget> {
  ///  Local state fields for this component.

  String? tabs = 'propertyInfo';

  List<DateTime> emptyList = [];
  void addToEmptyList(DateTime item) => emptyList.add(item);
  void removeFromEmptyList(DateTime item) => emptyList.remove(item);
  void removeAtIndexFromEmptyList(int index) => emptyList.removeAt(index);
  void insertAtIndexInEmptyList(int index, DateTime item) =>
      emptyList.insert(index, item);
  void updateEmptyListAtIndex(int index, Function(DateTime) updateFn) =>
      emptyList[index] = updateFn(emptyList[index]);

  ///  State fields for stateful widgets in this component.

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

  @override
  void initState(BuildContext context) {
    houseRuleCardModel1 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel2 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel3 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel4 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel5 = createModel(context, () => HouseRuleCardModel());
    newDetailsCardModel = createModel(context, () => NewDetailsCardModel());
  }

  @override
  void dispose() {
    houseRuleCardModel1.dispose();
    houseRuleCardModel2.dispose();
    houseRuleCardModel3.dispose();
    houseRuleCardModel4.dispose();
    houseRuleCardModel5.dispose();
    gridViewPagingController2?.dispose();
    newDetailsCardModel.dispose();
  }

  /// Additional helper methods.
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
