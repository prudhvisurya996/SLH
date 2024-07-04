import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pi_property_information_widget.dart' show PiPropertyInformationWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class PiPropertyInformationModel
    extends FlutterFlowModel<PiPropertyInformationWidget> {
  ///  Local state fields for this component.

  int? noOfBedRooms = 0;

  int? noOfBathRooms = 0;

  int? otherRooms = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for propertySize_sqft widget.
  FocusNode? propertySizeSqftFocusNode;
  TextEditingController? propertySizeSqftTextController;
  String? Function(BuildContext, String?)?
      propertySizeSqftTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for PropertySizeField widget.
  FocusNode? propertySizeFieldFocusNode;
  TextEditingController? propertySizeFieldTextController;
  String? Function(BuildContext, String?)?
      propertySizeFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    propertySizeSqftFocusNode?.dispose();
    propertySizeSqftTextController?.dispose();

    expandableExpandableController2.dispose();
    propertySizeFieldFocusNode?.dispose();
    propertySizeFieldTextController?.dispose();
  }
}
