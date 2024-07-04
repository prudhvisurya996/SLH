import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/search_form_web/search_form_web_widget.dart';
import 'search_copy_widget.dart' show SearchCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchCopyModel extends FlutterFlowModel<SearchCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for search_form_web component.
  late SearchFormWebModel searchFormWebModel;

  @override
  void initState(BuildContext context) {
    searchFormWebModel = createModel(context, () => SearchFormWebModel());
  }

  @override
  void dispose() {
    searchFormWebModel.dispose();
  }
}
