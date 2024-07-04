import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_review_card/new_review_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'new_review_booking_widget.dart' show NewReviewBookingWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewReviewBookingModel extends FlutterFlowModel<NewReviewBookingWidget> {
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
  // Model for new_review_card component.
  late NewReviewCardModel newReviewCardModel;
  // Model for login_form component.
  late LoginFormModel loginFormModel;

  @override
  void initState(BuildContext context) {
    newTopBarModel = createModel(context, () => NewTopBarModel());
    newReviewCardModel = createModel(context, () => NewReviewCardModel());
    loginFormModel = createModel(context, () => LoginFormModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newTopBarModel.dispose();
    newReviewCardModel.dispose();
    loginFormModel.dispose();
  }
}
