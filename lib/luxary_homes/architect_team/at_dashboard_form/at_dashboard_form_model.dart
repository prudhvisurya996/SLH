import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/architect_team/at_accepted_tasks/at_accepted_tasks_widget.dart';
import '/luxary_homes/architect_team/at_assigned_tasks/at_assigned_tasks_widget.dart';
import '/luxary_homes/architect_team/at_completed_tasks/at_completed_tasks_widget.dart';
import '/luxary_homes/architect_team/at_rejected_tasks/at_rejected_tasks_widget.dart';
import 'at_dashboard_form_widget.dart' show AtDashboardFormWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtDashboardFormModel extends FlutterFlowModel<AtDashboardFormWidget> {
  ///  Local state fields for this component.

  int? status = 0;

  int? pageNo = 1;

  int? pageSize = 17;

  ///  State fields for stateful widgets in this component.

  // Model for at_assigned_tasks component.
  late AtAssignedTasksModel atAssignedTasksModel;
  // Model for at_accepted_tasks component.
  late AtAcceptedTasksModel atAcceptedTasksModel;
  // Model for at_completed-tasks component.
  late AtCompletedTasksModel atCompletedTasksModel;
  // Model for at_rejected_tasks component.
  late AtRejectedTasksModel atRejectedTasksModel;

  @override
  void initState(BuildContext context) {
    atAssignedTasksModel = createModel(context, () => AtAssignedTasksModel());
    atAcceptedTasksModel = createModel(context, () => AtAcceptedTasksModel());
    atCompletedTasksModel = createModel(context, () => AtCompletedTasksModel());
    atRejectedTasksModel = createModel(context, () => AtRejectedTasksModel());
  }

  @override
  void dispose() {
    atAssignedTasksModel.dispose();
    atAcceptedTasksModel.dispose();
    atCompletedTasksModel.dispose();
    atRejectedTasksModel.dispose();
  }
}
