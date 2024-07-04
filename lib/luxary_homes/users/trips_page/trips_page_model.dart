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
import '/luxary_homes/users/trips_card/trips_card_widget.dart';
import '/luxary_homes/users/trips_error_message/trips_error_message_widget.dart';
import 'trips_page_widget.dart' show TripsPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TripsPageModel extends FlutterFlowModel<TripsPageWidget> {
  ///  Local state fields for this page.

  List<dynamic> emptyList = [];
  void addToEmptyList(dynamic item) => emptyList.add(item);
  void removeFromEmptyList(dynamic item) => emptyList.remove(item);
  void removeAtIndexFromEmptyList(int index) => emptyList.removeAt(index);
  void insertAtIndexInEmptyList(int index, dynamic item) =>
      emptyList.insert(index, item);
  void updateEmptyListAtIndex(int index, Function(dynamic) updateFn) =>
      emptyList[index] = updateFn(emptyList[index]);

  int? zero = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel;
  // Model for trips_error_message component.
  late TripsErrorMessageModel tripsErrorMessageModel1;
  // Model for trips_error_message component.
  late TripsErrorMessageModel tripsErrorMessageModel2;
  // Model for trips_error_message component.
  late TripsErrorMessageModel tripsErrorMessageModel3;
  // Model for trips_error_message component.
  late TripsErrorMessageModel tripsErrorMessageModel4;
  // Model for nav_bar component.
  late NavBarModel navBarModel1;
  // Model for trips_error_message component.
  late TripsErrorMessageModel tripsErrorMessageModel5;
  // Model for trips_error_message component.
  late TripsErrorMessageModel tripsErrorMessageModel6;
  // Model for trips_error_message component.
  late TripsErrorMessageModel tripsErrorMessageModel7;
  // Model for trips_error_message component.
  late TripsErrorMessageModel tripsErrorMessageModel8;
  // Model for nav_bar component.
  late NavBarModel navBarModel2;
  // Model for login_form component.
  late LoginFormModel loginFormModel;

  @override
  void initState(BuildContext context) {
    newTopBarModel = createModel(context, () => NewTopBarModel());
    tripsErrorMessageModel1 =
        createModel(context, () => TripsErrorMessageModel());
    tripsErrorMessageModel2 =
        createModel(context, () => TripsErrorMessageModel());
    tripsErrorMessageModel3 =
        createModel(context, () => TripsErrorMessageModel());
    tripsErrorMessageModel4 =
        createModel(context, () => TripsErrorMessageModel());
    navBarModel1 = createModel(context, () => NavBarModel());
    tripsErrorMessageModel5 =
        createModel(context, () => TripsErrorMessageModel());
    tripsErrorMessageModel6 =
        createModel(context, () => TripsErrorMessageModel());
    tripsErrorMessageModel7 =
        createModel(context, () => TripsErrorMessageModel());
    tripsErrorMessageModel8 =
        createModel(context, () => TripsErrorMessageModel());
    navBarModel2 = createModel(context, () => NavBarModel());
    loginFormModel = createModel(context, () => LoginFormModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newTopBarModel.dispose();
    tripsErrorMessageModel1.dispose();
    tripsErrorMessageModel2.dispose();
    tripsErrorMessageModel3.dispose();
    tripsErrorMessageModel4.dispose();
    navBarModel1.dispose();
    tripsErrorMessageModel5.dispose();
    tripsErrorMessageModel6.dispose();
    tripsErrorMessageModel7.dispose();
    tripsErrorMessageModel8.dispose();
    navBarModel2.dispose();
    loginFormModel.dispose();
  }
}
