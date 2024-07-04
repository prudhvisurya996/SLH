import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_property_card/new_property_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/users/filter/filter_widget.dart';
import '/luxary_homes/users/search/search_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'new_homepage_copy_widget.dart' show NewHomepageCopyWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class NewHomepageCopyModel extends FlutterFlowModel<NewHomepageCopyWidget> {
  ///  Local state fields for this page.

  bool onHover1 = false;

  bool onHover2 = false;

  bool onHover3 = false;

  bool onHover4 = false;

  bool onHover5 = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel;
  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
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
  // Model for web_copy_write component.
  late WebCopyWriteModel webCopyWriteModel;
  // Model for login_form component.
  late LoginFormModel loginFormModel;

  @override
  void initState(BuildContext context) {
    newTopBarModel = createModel(context, () => NewTopBarModel());
    webCopyWriteModel = createModel(context, () => WebCopyWriteModel());
    loginFormModel = createModel(context, () => LoginFormModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newTopBarModel.dispose();
    webCopyWriteModel.dispose();
    loginFormModel.dispose();
  }
}
