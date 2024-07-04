import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_components/filter_components/filter_form_component/filter_form_component_widget.dart';
import 'filter_properties_main_component_widget.dart'
    show FilterPropertiesMainComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterPropertiesMainComponentModel
    extends FlutterFlowModel<FilterPropertiesMainComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FilterFormComponent component.
  late FilterFormComponentModel filterFormComponentModel1;
  // Model for FilterFormComponent component.
  late FilterFormComponentModel filterFormComponentModel2;

  @override
  void initState(BuildContext context) {
    filterFormComponentModel1 =
        createModel(context, () => FilterFormComponentModel());
    filterFormComponentModel2 =
        createModel(context, () => FilterFormComponentModel());
  }

  @override
  void dispose() {
    filterFormComponentModel1.dispose();
    filterFormComponentModel2.dispose();
  }
}
