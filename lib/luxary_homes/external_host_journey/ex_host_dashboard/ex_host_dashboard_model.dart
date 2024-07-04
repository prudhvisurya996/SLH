import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/androidand_ios/nav_bar/nav_bar_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/external_host_journey/ex_host_dashboard_comp/ex_host_dashboard_comp_widget.dart';
import '/luxary_homes/external_host_journey/mobile/m_ex_listing/m_ex_listing_widget.dart';
import '/luxary_homes/external_host_journey/mobile/m_ex_ongoing/m_ex_ongoing_widget.dart';
import '/luxary_homes/external_host_journey/mobile/m_ex_rejected/m_ex_rejected_widget.dart';
import 'ex_host_dashboard_widget.dart' show ExHostDashboardWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExHostDashboardModel extends FlutterFlowModel<ExHostDashboardWidget> {
  ///  Local state fields for this page.

  int propertyStatus = 2;

  int pageNo = 1;

  int pageSize = 8;

  String? selectPropertyType;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ex_host_dashboard_comp component.
  late ExHostDashboardCompModel exHostDashboardCompModel;
  // Model for web_copy_write component.
  late WebCopyWriteModel webCopyWriteModel;
  // Model for m_ex_ongoing component.
  late MExOngoingModel mExOngoingModel;
  // Model for m_ex_rejected component.
  late MExRejectedModel mExRejectedModel;
  // Model for m_ex_listing component.
  late MExListingModel mExListingModel;
  // Model for nav_bar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    exHostDashboardCompModel =
        createModel(context, () => ExHostDashboardCompModel());
    webCopyWriteModel = createModel(context, () => WebCopyWriteModel());
    mExOngoingModel = createModel(context, () => MExOngoingModel());
    mExRejectedModel = createModel(context, () => MExRejectedModel());
    mExListingModel = createModel(context, () => MExListingModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    exHostDashboardCompModel.dispose();
    webCopyWriteModel.dispose();
    mExOngoingModel.dispose();
    mExRejectedModel.dispose();
    mExListingModel.dispose();
    navBarModel.dispose();
  }
}
