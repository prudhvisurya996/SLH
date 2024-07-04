import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login/login_widget.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/luxary_homes/users/reserve_card/reserve_card_widget.dart';
import '/luxary_homes/users/user_reviews/user_reviews_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'dont_delete_o_k_widget.dart' show DontDeleteOKWidget;
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

class DontDeleteOKModel extends FlutterFlowModel<DontDeleteOKWidget> {
  ///  Local state fields for this page.

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

  String tabs = 'propertyInfo';

  int? propertyId;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel;
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
  // Model for reserve_card component.
  late ReserveCardModel reserveCardModel;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController1;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall1;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
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
    reserveCardModel = createModel(context, () => ReserveCardModel());
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
    reserveCardModel.dispose();
    listViewPagingController1?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

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
}
