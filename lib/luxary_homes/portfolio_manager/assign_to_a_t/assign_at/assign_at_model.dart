import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/portfolio_manager/assign_to_a_t/at_assigned_success/at_assigned_success_widget.dart';
import '/luxary_homes/portfolio_manager/assign_to_a_t/at_found/at_found_widget.dart';
import 'assign_at_widget.dart' show AssignAtWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AssignAtModel extends FlutterFlowModel<AssignAtWidget> {
  ///  Local state fields for this component.

  bool? atFound;

  String? cityat;

  String? priorityLevel;

  bool? iconVisible = true;

  int? priorityInteger;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for at_found component.
  late AtFoundModel atFoundModel;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespAT;
  // Stores action output result for [Backend Call - API (Assigning to AT)] action in Button widget.
  ApiCallResponse? apiResultassignAT;

  @override
  void initState(BuildContext context) {
    atFoundModel = createModel(context, () => AtFoundModel());
  }

  @override
  void dispose() {
    atFoundModel.dispose();
  }
}
