import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'at_property_information_widget.dart' show AtPropertyInformationWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtPropertyInformationModel
    extends FlutterFlowModel<AtPropertyInformationWidget> {
  ///  Local state fields for this component.

  int? noOfBedRooms = 0;

  int? noOfBathRooms = 0;

  int? otherRooms = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for propertySize_sqft widget.
  FocusNode? propertySizeSqftFocusNode;
  TextEditingController? propertySizeSqftTextController;
  String? Function(BuildContext, String?)?
      propertySizeSqftTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    propertySizeSqftFocusNode?.dispose();
    propertySizeSqftTextController?.dispose();
  }
}
