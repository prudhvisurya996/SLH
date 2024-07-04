import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_components/search_components/search_form_component/search_form_component_widget.dart';
import 'search_component_widget.dart' show SearchComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchComponentModel extends FlutterFlowModel<SearchComponentWidget> {
  ///  Local state fields for this component.

  int? guestsCount = 01;

  ///  State fields for stateful widgets in this component.

  // Model for SearchFormComponent component.
  late SearchFormComponentModel searchFormComponentModel1;
  // Model for SearchFormComponent component.
  late SearchFormComponentModel searchFormComponentModel2;

  @override
  void initState(BuildContext context) {
    searchFormComponentModel1 =
        createModel(context, () => SearchFormComponentModel());
    searchFormComponentModel2 =
        createModel(context, () => SearchFormComponentModel());
  }

  @override
  void dispose() {
    searchFormComponentModel1.dispose();
    searchFormComponentModel2.dispose();
  }
}
