import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/androidand_ios/nav_bar/nav_bar_widget.dart';
import '/luxary_homes/archetict_team/m_at_accepted_card/m_at_accepted_card_widget.dart';
import '/luxary_homes/archetict_team/m_at_assigned_card/m_at_assigned_card_widget.dart';
import '/luxary_homes/archetict_team/m_at_completed_card/m_at_completed_card_widget.dart';
import '/luxary_homes/archetict_team/m_at_rejected_card/m_at_rejected_card_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/property_inspector/pi_error_msg/pi_error_msg_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'm_at_dashboard_widget.dart' show MAtDashboardWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MAtDashboardModel extends FlutterFlowModel<MAtDashboardWidget> {
  ///  Local state fields for this page.

  int? status = 0;

  int? pageNo = 1;

  int? pageSize = 8;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for nav_bar component.
  late NavBarModel navBarModel1;
  // Model for nav_bar component.
  late NavBarModel navBarModel2;

  @override
  void initState(BuildContext context) {
    navBarModel1 = createModel(context, () => NavBarModel());
    navBarModel2 = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarModel1.dispose();
    navBarModel2.dispose();
  }
}
