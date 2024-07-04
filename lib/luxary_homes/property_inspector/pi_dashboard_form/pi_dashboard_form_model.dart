import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/property_inspector/pi_accepted_tasks/pi_accepted_tasks_widget.dart';
import '/luxary_homes/property_inspector/pi_assigned_tasks/pi_assigned_tasks_widget.dart';
import '/luxary_homes/property_inspector/pi_completed_tasks/pi_completed_tasks_widget.dart';
import '/luxary_homes/property_inspector/pi_rejected_tasks/pi_rejected_tasks_widget.dart';
import 'pi_dashboard_form_widget.dart' show PiDashboardFormWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PiDashboardFormModel extends FlutterFlowModel<PiDashboardFormWidget> {
  ///  Local state fields for this component.

  int? status = 0;

  int? pageNo = 1;

  int? pageSize = 17;

  ///  State fields for stateful widgets in this component.

  // Model for pi_assigned_tasks component.
  late PiAssignedTasksModel piAssignedTasksModel;
  // Model for pi_accepted_tasks component.
  late PiAcceptedTasksModel piAcceptedTasksModel;
  // Model for pi_completed-tasks component.
  late PiCompletedTasksModel piCompletedTasksModel;
  // Model for pi_rejected_tasks component.
  late PiRejectedTasksModel piRejectedTasksModel;

  @override
  void initState(BuildContext context) {
    piAssignedTasksModel = createModel(context, () => PiAssignedTasksModel());
    piAcceptedTasksModel = createModel(context, () => PiAcceptedTasksModel());
    piCompletedTasksModel = createModel(context, () => PiCompletedTasksModel());
    piRejectedTasksModel = createModel(context, () => PiRejectedTasksModel());
  }

  @override
  void dispose() {
    piAssignedTasksModel.dispose();
    piAcceptedTasksModel.dispose();
    piCompletedTasksModel.dispose();
    piRejectedTasksModel.dispose();
  }
}
