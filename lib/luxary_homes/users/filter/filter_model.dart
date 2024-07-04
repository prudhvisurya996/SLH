import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/filter_form/filter_form_widget.dart';
import 'filter_widget.dart' show FilterWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterModel extends FlutterFlowModel<FilterWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for filter_form component.
  late FilterFormModel filterFormModel1;
  // Model for filter_form component.
  late FilterFormModel filterFormModel2;

  @override
  void initState(BuildContext context) {
    filterFormModel1 = createModel(context, () => FilterFormModel());
    filterFormModel2 = createModel(context, () => FilterFormModel());
  }

  @override
  void dispose() {
    filterFormModel1.dispose();
    filterFormModel2.dispose();
  }
}
