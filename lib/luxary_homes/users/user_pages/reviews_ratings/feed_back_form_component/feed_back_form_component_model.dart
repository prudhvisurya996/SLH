import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/users/user_pages/reviews_ratings/feed_back_submit_comp/feed_back_submit_comp_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'feed_back_form_component_widget.dart' show FeedBackFormComponentWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FeedBackFormComponentModel
    extends FlutterFlowModel<FeedBackFormComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for FBDescriptionTextField widget.
  FocusNode? fBDescriptionTextFieldFocusNode;
  TextEditingController? fBDescriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      fBDescriptionTextFieldTextControllerValidator;
  String? _fBDescriptionTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Rating Review)] action in Button widget.
  ApiCallResponse? submitRatingReviewResponse;

  @override
  void initState(BuildContext context) {
    fBDescriptionTextFieldTextControllerValidator =
        _fBDescriptionTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    fBDescriptionTextFieldFocusNode?.dispose();
    fBDescriptionTextFieldTextController?.dispose();
  }
}
