import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/search_form_phone/search_form_phone_widget.dart';
import '/luxary_homes/users/search_form_web/search_form_web_widget.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  Local state fields for this component.

  int? guestsCount = 01;

  ///  State fields for stateful widgets in this component.

  // Model for search_form_phone component.
  late SearchFormPhoneModel searchFormPhoneModel;
  // Model for search_form_web component.
  late SearchFormWebModel searchFormWebModel;

  @override
  void initState(BuildContext context) {
    searchFormPhoneModel = createModel(context, () => SearchFormPhoneModel());
    searchFormWebModel = createModel(context, () => SearchFormWebModel());
  }

  @override
  void dispose() {
    searchFormPhoneModel.dispose();
    searchFormWebModel.dispose();
  }
}
