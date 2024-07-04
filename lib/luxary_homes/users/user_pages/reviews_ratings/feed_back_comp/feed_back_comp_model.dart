import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_pages/reviews_ratings/feed_back_form_component/feed_back_form_component_widget.dart';
import 'feed_back_comp_widget.dart' show FeedBackCompWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FeedBackCompModel extends FlutterFlowModel<FeedBackCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for feedBackFormComponent component.
  late FeedBackFormComponentModel feedBackFormComponentModel1;
  // Model for feedBackFormComponent component.
  late FeedBackFormComponentModel feedBackFormComponentModel2;

  @override
  void initState(BuildContext context) {
    feedBackFormComponentModel1 =
        createModel(context, () => FeedBackFormComponentModel());
    feedBackFormComponentModel2 =
        createModel(context, () => FeedBackFormComponentModel());
  }

  @override
  void dispose() {
    feedBackFormComponentModel1.dispose();
    feedBackFormComponentModel2.dispose();
  }
}
