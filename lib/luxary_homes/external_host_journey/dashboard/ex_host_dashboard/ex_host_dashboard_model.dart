import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/external_host_journey/dashboard/dashboard_components/ex_lse_rqt_db/ex_lse_rqt_db_widget.dart';
import '/luxary_homes/external_host_journey/dashboard/ex_host_property_listing_mobile_components/m_listed_property_listing/m_listed_property_listing_widget.dart';
import '/luxary_homes/external_host_journey/dashboard/ex_host_property_listing_mobile_components/m_ongoing_property_listing/m_ongoing_property_listing_widget.dart';
import '/luxary_homes/external_host_journey/dashboard/ex_host_property_listing_mobile_components/m_rejected_property_listing/m_rejected_property_listing_widget.dart';
import 'ex_host_dashboard_widget.dart' show ExHostDashboardWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExHostDashboardModel extends FlutterFlowModel<ExHostDashboardWidget> {
  ///  Local state fields for this page.

  int propertyStatus = 2;

  int pageNo = 1;

  int pageSize = 10;

  String? selectPropertyType;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for ex_lse_rqt_db component.
  late ExLseRqtDbModel exLseRqtDbModel;
  // Model for WebBottomCopyWrite component.
  late WebBottomCopyWriteModel webBottomCopyWriteModel;
  // Model for m_ongoing_PropertyListing component.
  late MOngoingPropertyListingModel mOngoingPropertyListingModel;
  // Model for m_rejected_PropertyListing component.
  late MRejectedPropertyListingModel mRejectedPropertyListingModel;
  // Model for m_Listed_PropertyListing component.
  late MListedPropertyListingModel mListedPropertyListingModel;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    exLseRqtDbModel = createModel(context, () => ExLseRqtDbModel());
    webBottomCopyWriteModel =
        createModel(context, () => WebBottomCopyWriteModel());
    mOngoingPropertyListingModel =
        createModel(context, () => MOngoingPropertyListingModel());
    mRejectedPropertyListingModel =
        createModel(context, () => MRejectedPropertyListingModel());
    mListedPropertyListingModel =
        createModel(context, () => MListedPropertyListingModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    exLseRqtDbModel.dispose();
    webBottomCopyWriteModel.dispose();
    mOngoingPropertyListingModel.dispose();
    mRejectedPropertyListingModel.dispose();
    mListedPropertyListingModel.dispose();
  }
}
