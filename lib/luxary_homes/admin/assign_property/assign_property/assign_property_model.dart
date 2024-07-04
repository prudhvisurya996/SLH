import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/admin/assign_property/p_i_assigned_success/p_i_assigned_success_widget.dart';
import '/luxary_homes/admin/assign_property/p_i_found/p_i_found_widget.dart';
import 'assign_property_widget.dart' show AssignPropertyWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AssignPropertyModel extends FlutterFlowModel<AssignPropertyWidget> {
  ///  Local state fields for this component.

  bool? piFound;

  String? cityPI;

  String? priorityLevel;

  bool? iconVisible = true;

  int? priorityInteger;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for PI_found component.
  late PIFoundModel pIFoundModel;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespPI;
  // Stores action output result for [Backend Call - API (Assigning to Property Inspector)] action in Button widget.
  ApiCallResponse? apiResultPIDashboard;

  @override
  void initState(BuildContext context) {
    pIFoundModel = createModel(context, () => PIFoundModel());
  }

  @override
  void dispose() {
    pIFoundModel.dispose();
  }
}
