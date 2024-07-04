import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/dashboard/web_comp/ex_ltd_ppt/ex_ltd_ppt_widget.dart';
import '/luxary_homes/external_host_journey/dashboard/web_comp/ex_on_going_ppts/ex_on_going_ppts_widget.dart';
import '/luxary_homes/external_host_journey/dashboard/web_comp/ex_rjtd_ppts/ex_rjtd_ppts_widget.dart';
import 'ex_lse_rqt_db_widget.dart' show ExLseRqtDbWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExLseRqtDbModel extends FlutterFlowModel<ExLseRqtDbWidget> {
  ///  Local state fields for this component.

  int? propertyStatus = 3;

  int? pageNo = 1;

  int? pageSize = 17;

  ///  State fields for stateful widgets in this component.

  // Model for ex_onGoingPpts component.
  late ExOnGoingPptsModel exOnGoingPptsModel;
  // Model for ex_RjtdPpts component.
  late ExRjtdPptsModel exRjtdPptsModel;
  // Model for ex_Ltd_Ppt component.
  late ExLtdPptModel exLtdPptModel;

  @override
  void initState(BuildContext context) {
    exOnGoingPptsModel = createModel(context, () => ExOnGoingPptsModel());
    exRjtdPptsModel = createModel(context, () => ExRjtdPptsModel());
    exLtdPptModel = createModel(context, () => ExLtdPptModel());
  }

  @override
  void dispose() {
    exOnGoingPptsModel.dispose();
    exRjtdPptsModel.dispose();
    exLtdPptModel.dispose();
  }
}
