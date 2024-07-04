import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'filter_form_component_widget.dart' show FilterFormComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterFormComponentModel
    extends FlutterFlowModel<FilterFormComponentWidget> {
  ///  Local state fields for this component.

  int? guestsCount = 00;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Search Filter API)] action in Button widget.
  ApiCallResponse? filterOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
