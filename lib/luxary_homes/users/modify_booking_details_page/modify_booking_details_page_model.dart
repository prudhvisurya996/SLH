import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/users/user_components/property_components/house_rule_card/house_rule_card_widget.dart';
import '/luxary_homes/users/user_components/property_components/images_popup_component/images_popup_component_widget.dart';
import '/luxary_homes/users/user_components/property_components/modify_booking_desktop_reserve_card/modify_booking_desktop_reserve_card_widget.dart';
import '/luxary_homes/users/user_pages/reviews_ratings/user_reviews/user_reviews_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'modify_booking_details_page_widget.dart'
    show ModifyBookingDetailsPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class ModifyBookingDetailsPageModel
    extends FlutterFlowModel<ModifyBookingDetailsPageWidget> {
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

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel1;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel2;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel3;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel4;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel5;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel6;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel7;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel8;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel9;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel10;
  // Model for ModifyBookingDesktopReserveCard component.
  late ModifyBookingDesktopReserveCardModel
      modifyBookingDesktopReserveCardModel;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  // Model for WebBottomCopyWrite component.
  late WebBottomCopyWriteModel webBottomCopyWriteModel;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
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
    modifyBookingDesktopReserveCardModel =
        createModel(context, () => ModifyBookingDesktopReserveCardModel());
    webBottomCopyWriteModel =
        createModel(context, () => WebBottomCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
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
    modifyBookingDesktopReserveCardModel.dispose();
    listViewPagingController?.dispose();
    webBottomCopyWriteModel.dispose();
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
    return controller..addPageRequestListener(listViewReviewsRatingsPage);
  }

  void listViewReviewsRatingsPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker).then((listViewReviewsRatingsResponse) {
        final pageItems = (getJsonField(
                  listViewReviewsRatingsResponse.jsonBody,
                  r'''$.ratingsReview''',
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
                  lastResponse: listViewReviewsRatingsResponse,
                )
              : null,
        );
      });
}