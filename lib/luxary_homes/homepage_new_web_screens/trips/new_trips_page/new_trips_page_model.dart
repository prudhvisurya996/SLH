import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/androidand_ios/nav_bar/nav_bar_widget.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/trips/new_cancelled_trips/new_cancelled_trips_widget.dart';
import '/luxary_homes/homepage_new_web_screens/trips/new_completed_trips/new_completed_trips_widget.dart';
import '/luxary_homes/homepage_new_web_screens/trips/new_upcoming_trips/new_upcoming_trips_widget.dart';
import '/luxary_homes/users/trips_card/trips_card_widget.dart';
import '/luxary_homes/users/trips_error_message/trips_error_message_widget.dart';
import 'new_trips_page_widget.dart' show NewTripsPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewTripsPageModel extends FlutterFlowModel<NewTripsPageWidget> {
  ///  Local state fields for this page.

  int? propertyStatus;

  int? pageNo;

  int? pageSize;

  String internalTabs = 'propertyInfo';

  String? bookingId;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel1;
  // Model for new_upcoming_trips component.
  late NewUpcomingTripsModel newUpcomingTripsModel;
  // Model for new_completed_trips component.
  late NewCompletedTripsModel newCompletedTripsModel;
  // Model for new_cancelled_trips component.
  late NewCancelledTripsModel newCancelledTripsModel;
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel2;
  // Model for trips_error_message component.
  late TripsErrorMessageModel tripsErrorMessageModel1;
  // Model for trips_error_message component.
  late TripsErrorMessageModel tripsErrorMessageModel2;
  // Model for trips_error_message component.
  late TripsErrorMessageModel tripsErrorMessageModel3;
  // Model for trips_error_message component.
  late TripsErrorMessageModel tripsErrorMessageModel4;
  // Model for nav_bar component.
  late NavBarModel navBarModel;
  // Model for login_form component.
  late LoginFormModel loginFormModel;

  @override
  void initState(BuildContext context) {
    newTopBarModel1 = createModel(context, () => NewTopBarModel());
    newUpcomingTripsModel = createModel(context, () => NewUpcomingTripsModel());
    newCompletedTripsModel =
        createModel(context, () => NewCompletedTripsModel());
    newCancelledTripsModel =
        createModel(context, () => NewCancelledTripsModel());
    newTopBarModel2 = createModel(context, () => NewTopBarModel());
    tripsErrorMessageModel1 =
        createModel(context, () => TripsErrorMessageModel());
    tripsErrorMessageModel2 =
        createModel(context, () => TripsErrorMessageModel());
    tripsErrorMessageModel3 =
        createModel(context, () => TripsErrorMessageModel());
    tripsErrorMessageModel4 =
        createModel(context, () => TripsErrorMessageModel());
    navBarModel = createModel(context, () => NavBarModel());
    loginFormModel = createModel(context, () => LoginFormModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newTopBarModel1.dispose();
    newUpcomingTripsModel.dispose();
    newCompletedTripsModel.dispose();
    newCancelledTripsModel.dispose();
    newTopBarModel2.dispose();
    tripsErrorMessageModel1.dispose();
    tripsErrorMessageModel2.dispose();
    tripsErrorMessageModel3.dispose();
    tripsErrorMessageModel4.dispose();
    navBarModel.dispose();
    loginFormModel.dispose();
  }
}
