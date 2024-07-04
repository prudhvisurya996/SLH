import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/property_inspector/pi_dashboard/accepted_tasks/accepted_tasks_widget.dart';
import '/luxary_homes/property_inspector/pi_dashboard/assigned_tasks/assigned_tasks_widget.dart';
import '/luxary_homes/property_inspector/pi_dashboard/completed_tasks/completed_tasks_widget.dart';
import '/luxary_homes/property_inspector/pi_dashboard/rejected_task/rejected_task_widget.dart';
import 'pi_dashboard_widget.dart' show PiDashboardWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PiDashboardModel extends FlutterFlowModel<PiDashboardWidget> {
  ///  Local state fields for this component.

  int? status = 1;

  int? pageNo = 1;

  int? pageSize = 17;

  ///  State fields for stateful widgets in this component.

  // Model for assigned_tasks component.
  late AssignedTasksModel assignedTasksModel;
  // Model for Accepted_tasks component.
  late AcceptedTasksModel acceptedTasksModel;
  // Model for Completed-tasks component.
  late CompletedTasksModel completedTasksModel;
  // Model for rejected_task component.
  late RejectedTaskModel rejectedTaskModel;

  @override
  void initState(BuildContext context) {
    assignedTasksModel = createModel(context, () => AssignedTasksModel());
    acceptedTasksModel = createModel(context, () => AcceptedTasksModel());
    completedTasksModel = createModel(context, () => CompletedTasksModel());
    rejectedTaskModel = createModel(context, () => RejectedTaskModel());
  }

  @override
  void dispose() {
    assignedTasksModel.dispose();
    acceptedTasksModel.dispose();
    completedTasksModel.dispose();
    rejectedTaskModel.dispose();
  }
}
