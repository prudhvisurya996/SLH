import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_review_card/new_review_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_user_reviews/new_user_reviews_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'new_property_detail_page_widget.dart' show NewPropertyDetailPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class NewPropertyDetailPageModel
    extends FlutterFlowModel<NewPropertyDetailPageWidget> {
  ///  Local state fields for this page.

  bool onHover1 = false;

  bool onHover2 = false;

  bool onHover3 = false;

  bool onHover4 = false;

  bool onHover5 = false;

  String? tabs = 'PropertyInformation';

  List<DateTime> selectedFromToDates = [];
  void addToSelectedFromToDates(DateTime item) => selectedFromToDates.add(item);
  void removeFromSelectedFromToDates(DateTime item) =>
      selectedFromToDates.remove(item);
  void removeAtIndexFromSelectedFromToDates(int index) =>
      selectedFromToDates.removeAt(index);
  void insertAtIndexInSelectedFromToDates(int index, DateTime item) =>
      selectedFromToDates.insert(index, item);
  void updateSelectedFromToDatesAtIndex(
          int index, Function(DateTime) updateFn) =>
      selectedFromToDates[index] = updateFn(selectedFromToDates[index]);

  double? averageRatings;

  int? propertyId;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for new_review_card component.
  late NewReviewCardModel newReviewCardModel1;
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

  // Model for new_review_card component.
  late NewReviewCardModel newReviewCardModel2;
  // Model for login_form component.
  late LoginFormModel loginFormModel;

  @override
  void initState(BuildContext context) {
    newTopBarModel = createModel(context, () => NewTopBarModel());
    newReviewCardModel1 = createModel(context, () => NewReviewCardModel());
    houseRuleCardModel1 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel2 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel3 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel4 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel5 = createModel(context, () => HouseRuleCardModel());
    newReviewCardModel2 = createModel(context, () => NewReviewCardModel());
    loginFormModel = createModel(context, () => LoginFormModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newTopBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    newReviewCardModel1.dispose();
    houseRuleCardModel1.dispose();
    houseRuleCardModel2.dispose();
    houseRuleCardModel3.dispose();
    houseRuleCardModel4.dispose();
    houseRuleCardModel5.dispose();
    gridViewPagingController2?.dispose();
    newReviewCardModel2.dispose();
    loginFormModel.dispose();
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
