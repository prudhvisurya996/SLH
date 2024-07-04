import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'search_form_component_widget.dart' show SearchFormComponentWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchFormComponentModel
    extends FlutterFlowModel<SearchFormComponentWidget> {
  ///  Local state fields for this component.

  int? guestsCount;

  List<DateTime> emptyList = [];
  void addToEmptyList(DateTime item) => emptyList.add(item);
  void removeFromEmptyList(DateTime item) => emptyList.remove(item);
  void removeAtIndexFromEmptyList(int index) => emptyList.removeAt(index);
  void insertAtIndexInEmptyList(int index, DateTime item) =>
      emptyList.insert(index, item);
  void updateEmptyListAtIndex(int index, Function(DateTime) updateFn) =>
      emptyList[index] = updateFn(emptyList[index]);

  bool emptySpaces = false;

  String? onChangeFiltering;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (SearchCities)] action in SearchFormComponent widget.
  ApiCallResponse? cityResult;
  // Stores action output result for [Backend Call - API (SearchLocalities)] action in SearchFormComponent widget.
  ApiCallResponse? localityResult;
  // State field(s) for CityTextField widget.
  final cityTextFieldKey = GlobalKey();
  FocusNode? cityTextFieldFocusNode;
  TextEditingController? cityTextFieldTextController;
  String? cityTextFieldSelectedOption;
  String? Function(BuildContext, String?)? cityTextFieldTextControllerValidator;
  // State field(s) for LocalityTextField widget.
  final localityTextFieldKey = GlobalKey();
  FocusNode? localityTextFieldFocusNode;
  TextEditingController? localityTextFieldTextController;
  String? localityTextFieldSelectedOption;
  String? Function(BuildContext, String?)?
      localityTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Search Filter API)] action in Button widget.
  ApiCallResponse? searchPropertyOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cityTextFieldFocusNode?.dispose();

    localityTextFieldFocusNode?.dispose();
  }
}
