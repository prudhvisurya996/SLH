import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/androidand_ios/nav_bar/nav_bar_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/internal_host_journey/host_active_property/host_active_property_widget.dart';
import '/luxary_homes/internal_host_journey/m_in_active_properties/m_in_active_properties_widget.dart';
import '/luxary_homes/internal_host_journey/m_in_blocked_properties/m_in_blocked_properties_widget.dart';
import '/luxary_homes/internal_host_journey/m_in_pending_properties/m_in_pending_properties_widget.dart';
import '/luxary_homes/internal_host_journey/m_in_reject_properties/m_in_reject_properties_widget.dart';
import '/luxary_homes/internal_host_journey/w_active_properties/w_active_properties_widget.dart';
import '/luxary_homes/internal_host_journey/w_blocked_properties/w_blocked_properties_widget.dart';
import '/luxary_homes/internal_host_journey/w_pending_properties/w_pending_properties_widget.dart';
import '/luxary_homes/internal_host_journey/w_rejected_properties/w_rejected_properties_widget.dart';
import 'in_host_dashboard_widget.dart' show InHostDashboardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InHostDashboardModel extends FlutterFlowModel<InHostDashboardWidget> {
  ///  Local state fields for this page.

  int propertyStatus = 1;

  int pageNo = 1;

  int pageSize = 10;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for w_ActiveProperties component.
  late WActivePropertiesModel wActivePropertiesModel;
  // Model for w_BlockedProperties component.
  late WBlockedPropertiesModel wBlockedPropertiesModel;
  // Model for w_PendingProperties component.
  late WPendingPropertiesModel wPendingPropertiesModel;
  // Model for w_RejectedProperties component.
  late WRejectedPropertiesModel wRejectedPropertiesModel;
  // Model for web_copy_write component.
  late WebCopyWriteModel webCopyWriteModel;
  // Model for host_active_property component.
  late HostActivePropertyModel hostActivePropertyModel;
  // Model for m_in_blocked_properties component.
  late MInBlockedPropertiesModel mInBlockedPropertiesModel;
  // Model for m_in_pending_properties component.
  late MInPendingPropertiesModel mInPendingPropertiesModel;
  // Model for m_in_reject_properties component.
  late MInRejectPropertiesModel mInRejectPropertiesModel;
  // Model for m_in_active_properties component.
  late MInActivePropertiesModel mInActivePropertiesModel;
  // Model for nav_bar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    wActivePropertiesModel =
        createModel(context, () => WActivePropertiesModel());
    wBlockedPropertiesModel =
        createModel(context, () => WBlockedPropertiesModel());
    wPendingPropertiesModel =
        createModel(context, () => WPendingPropertiesModel());
    wRejectedPropertiesModel =
        createModel(context, () => WRejectedPropertiesModel());
    webCopyWriteModel = createModel(context, () => WebCopyWriteModel());
    hostActivePropertyModel =
        createModel(context, () => HostActivePropertyModel());
    mInBlockedPropertiesModel =
        createModel(context, () => MInBlockedPropertiesModel());
    mInPendingPropertiesModel =
        createModel(context, () => MInPendingPropertiesModel());
    mInRejectPropertiesModel =
        createModel(context, () => MInRejectPropertiesModel());
    mInActivePropertiesModel =
        createModel(context, () => MInActivePropertiesModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    wActivePropertiesModel.dispose();
    wBlockedPropertiesModel.dispose();
    wPendingPropertiesModel.dispose();
    wRejectedPropertiesModel.dispose();
    webCopyWriteModel.dispose();
    hostActivePropertyModel.dispose();
    mInBlockedPropertiesModel.dispose();
    mInPendingPropertiesModel.dispose();
    mInRejectPropertiesModel.dispose();
    mInActivePropertiesModel.dispose();
    navBarModel.dispose();
  }
}
