import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_active_property_component/host_active_property_component_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/mobile/m_active_properties/m_active_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/mobile/m_blocked_properties/m_blocked_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/mobile/m_pending_properties/m_pending_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/mobile/m_rejected_properties/m_rejected_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/web/w_active_properties/w_active_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/web/w_blocked_properties/w_blocked_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/web/w_pending_properties/w_pending_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/web/w_rejected_properties/w_rejected_properties_widget.dart';
import 'host_dashboard_widget.dart' show HostDashboardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HostDashboardModel extends FlutterFlowModel<HostDashboardWidget> {
  ///  Local state fields for this page.

  int propertyStatus = 1;

  int pageNo = 1;

  int pageSize = 10;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for w_ActiveProperties component.
  late WActivePropertiesModel wActivePropertiesModel;
  // Model for w_BlockedProperties component.
  late WBlockedPropertiesModel wBlockedPropertiesModel;
  // Model for w_PendingProperties component.
  late WPendingPropertiesModel wPendingPropertiesModel;
  // Model for w_RejectedProperties component.
  late WRejectedPropertiesModel wRejectedPropertiesModel;
  // Model for WebBottomCopyWrite component.
  late WebBottomCopyWriteModel webBottomCopyWriteModel;
  // Model for host_active_property_component component.
  late HostActivePropertyComponentModel hostActivePropertyComponentModel;
  // Model for m_BlockedProperties component.
  late MBlockedPropertiesModel mBlockedPropertiesModel;
  // Model for m_PendingProperties component.
  late MPendingPropertiesModel mPendingPropertiesModel;
  // Model for m_RejectedProperties component.
  late MRejectedPropertiesModel mRejectedPropertiesModel;
  // Model for m_ActiveProperties component.
  late MActivePropertiesModel mActivePropertiesModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    wActivePropertiesModel =
        createModel(context, () => WActivePropertiesModel());
    wBlockedPropertiesModel =
        createModel(context, () => WBlockedPropertiesModel());
    wPendingPropertiesModel =
        createModel(context, () => WPendingPropertiesModel());
    wRejectedPropertiesModel =
        createModel(context, () => WRejectedPropertiesModel());
    webBottomCopyWriteModel =
        createModel(context, () => WebBottomCopyWriteModel());
    hostActivePropertyComponentModel =
        createModel(context, () => HostActivePropertyComponentModel());
    mBlockedPropertiesModel =
        createModel(context, () => MBlockedPropertiesModel());
    mPendingPropertiesModel =
        createModel(context, () => MPendingPropertiesModel());
    mRejectedPropertiesModel =
        createModel(context, () => MRejectedPropertiesModel());
    mActivePropertiesModel =
        createModel(context, () => MActivePropertiesModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    wActivePropertiesModel.dispose();
    wBlockedPropertiesModel.dispose();
    wPendingPropertiesModel.dispose();
    wRejectedPropertiesModel.dispose();
    webBottomCopyWriteModel.dispose();
    hostActivePropertyComponentModel.dispose();
    mBlockedPropertiesModel.dispose();
    mPendingPropertiesModel.dispose();
    mRejectedPropertiesModel.dispose();
    mActivePropertiesModel.dispose();
    navBarModel.dispose();
  }
}
