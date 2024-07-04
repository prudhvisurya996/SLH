import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/admin/admin_dashboard/lease_rqt_db/lease_rqt_db_widget.dart';
import '/luxary_homes/admin/admin_dashboard/property_listing_db/property_listing_db_widget.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import 'admin_dashboard_widget.dart' show AdminDashboardWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminDashboardModel extends FlutterFlowModel<AdminDashboardWidget> {
  ///  Local state fields for this page.

  String? selectPropertyType = 'Lease Request';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for property_listing_db component.
  late PropertyListingDbModel propertyListingDbModel;
  // Model for lease_rqt_db component.
  late LeaseRqtDbModel leaseRqtDbModel;
  // Model for WebBottomCopyWrite component.
  late WebBottomCopyWriteModel webBottomCopyWriteModel;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    propertyListingDbModel =
        createModel(context, () => PropertyListingDbModel());
    leaseRqtDbModel = createModel(context, () => LeaseRqtDbModel());
    webBottomCopyWriteModel =
        createModel(context, () => WebBottomCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    propertyListingDbModel.dispose();
    leaseRqtDbModel.dispose();
    webBottomCopyWriteModel.dispose();
  }
}
