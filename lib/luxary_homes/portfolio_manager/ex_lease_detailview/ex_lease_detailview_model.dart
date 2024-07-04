import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/portfolio_manager/ex_lease_detail_view/ex_lease_detail_view_widget.dart';
import 'ex_lease_detailview_widget.dart' show ExLeaseDetailviewWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExLeaseDetailviewModel extends FlutterFlowModel<ExLeaseDetailviewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for ex_lease_detail_view component.
  late ExLeaseDetailViewModel exLeaseDetailViewModel;
  // Model for web_copy_write component.
  late WebCopyWriteModel webCopyWriteModel;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    exLeaseDetailViewModel =
        createModel(context, () => ExLeaseDetailViewModel());
    webCopyWriteModel = createModel(context, () => WebCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    exLeaseDetailViewModel.dispose();
    webCopyWriteModel.dispose();
  }
}
