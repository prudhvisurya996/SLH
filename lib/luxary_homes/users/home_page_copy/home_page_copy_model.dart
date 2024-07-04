import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/androidand_ios/nav_bar/nav_bar_widget.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_contact_us/new_contact_us_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_property_card/new_property_card_widget.dart';
import '/luxary_homes/users/filter/filter_widget.dart';
import '/luxary_homes/users/property_card/property_card_widget.dart';
import '/luxary_homes/users/search/search_widget.dart';
import '/luxary_homes/users/search_filter_comp/search_filter_comp_widget.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'home_page_copy_widget.dart' show HomePageCopyWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomePageCopyModel extends FlutterFlowModel<HomePageCopyWidget> {
  ///  Local state fields for this page.

  bool? onHover1;

  bool? onHover2;

  bool? onHover3;

  bool? onHover4;

  bool? onHover5;

  int? categoriesPageViewIndex = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for login_form component.
  late LoginFormModel loginFormModel;
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  // State field(s) for StaggeredView widget.

  PagingController<ApiPagingParams, dynamic>? staggeredViewPagingController1;
  Function(ApiPagingParams nextPageMarker)? staggeredViewApiCall1;

  // Model for web_copy_write component.
  late WebCopyWriteModel webCopyWriteModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Backend Call - API (Search Filter API)] action in Container widget.
  ApiCallResponse? filterOutputCopy1;
  // Stores action output result for [Backend Call - API (Search Filter API)] action in Text widget.
  ApiCallResponse? filterOutput;
  // Stores action output result for [Backend Call - API (Search Filter API)] action in Container widget.
  ApiCallResponse? filter1Copy1;
  // Stores action output result for [Backend Call - API (Search Filter API)] action in Text widget.
  ApiCallResponse? filter1;
  // Stores action output result for [Backend Call - API (Search Filter API)] action in Container widget.
  ApiCallResponse? filter2Copy1;
  // Stores action output result for [Backend Call - API (Search Filter API)] action in Text widget.
  ApiCallResponse? filter2;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  // Model for nav_bar component.
  late NavBarModel navBarModel;
  // Model for search_filter_comp component.
  late SearchFilterCompModel searchFilterCompModel;
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel;
  // State field(s) for contentPageView widget.
  PageController? contentPageViewController;

  int get contentPageViewCurrentIndex => contentPageViewController != null &&
          contentPageViewController!.hasClients &&
          contentPageViewController!.page != null
      ? contentPageViewController!.page!.round()
      : 0;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  // Stores action output result for [Backend Call - API (Search Filter API)] action in Container widget.
  ApiCallResponse? filterOutputForWeb;
  // Stores action output result for [Backend Call - API (Search Filter API)] action in Text widget.
  ApiCallResponse? filterTextOutputForWeb;
  // Stores action output result for [Backend Call - API (Search Filter API)] action in Container widget.
  ApiCallResponse? filter1ForWeb;
  // Stores action output result for [Backend Call - API (Search Filter API)] action in Text widget.
  ApiCallResponse? filterText1ForWeb;
  // Stores action output result for [Backend Call - API (Search Filter API)] action in Container widget.
  ApiCallResponse? filter2ForWeb;
  // Stores action output result for [Backend Call - API (Search Filter API)] action in Text widget.
  ApiCallResponse? filterText2ForWeb;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;

  @override
  void initState(BuildContext context) {
    loginFormModel = createModel(context, () => LoginFormModel());
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    webCopyWriteModel = createModel(context, () => WebCopyWriteModel());
    navBarModel = createModel(context, () => NavBarModel());
    searchFilterCompModel = createModel(context, () => SearchFilterCompModel());
    newTopBarModel = createModel(context, () => NewTopBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    loginFormModel.dispose();
    commonTopBarModel.dispose();
    staggeredViewPagingController1?.dispose();
    webCopyWriteModel.dispose();
    listViewPagingController?.dispose();
    navBarModel.dispose();
    searchFilterCompModel.dispose();
    newTopBarModel.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setStaggeredViewController1(
    Function(ApiPagingParams) apiCall,
  ) {
    staggeredViewApiCall1 = apiCall;
    return staggeredViewPagingController1 ??=
        _createStaggeredViewController1(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createStaggeredViewController1(
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
      ..addPageRequestListener(staggeredViewPropertyListingsPage1);
  }

  void staggeredViewPropertyListingsPage1(ApiPagingParams nextPageMarker) =>
      staggeredViewApiCall1!(nextPageMarker)
          .then((staggeredViewPropertyListingsResponse) {
        final pageItems = (getJsonField(
                  staggeredViewPropertyListingsResponse.jsonBody,
                  r'''$.propertyBriefs''',
                ) ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        staggeredViewPagingController1?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: staggeredViewPropertyListingsResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForStaggeredView1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (staggeredViewPagingController1?.nextPageKey?.nextPageNumber ?? 0) >
              0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

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
    return controller..addPageRequestListener(listViewPropertyListingsPage);
  }

  void listViewPropertyListingsPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker).then((listViewPropertyListingsResponse) {
        final pageItems = (getJsonField(
                  listViewPropertyListingsResponse.jsonBody,
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
                  lastResponse: listViewPropertyListingsResponse,
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
}
