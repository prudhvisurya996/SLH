// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:hospitality_platform/index.dart';

List<Map> webroutersList = [
  {"route": "startHosting", "widget": StartHostingWidget()},
  {
    "route": "tellusAboutYourProperty",
    "widget": TellusAboutYourPropertyWidget()
  },
  {"route": "propertyLocation", "widget": PropertyLocationWidget()},
  {"route": "addressDetails", "widget": AddressDetailsWidget()},
  {"route": "basicDetails", "widget": BasicDetailsWidget()},
  {"route": "amenities", "widget": AmenitiesWidget()},
  {"route": "definePropertyPricing", "widget": DefinePropertyPricingWidget()},
  {"route": "propertySummary", "widget": PropertySummaryWidget()},
  {"route": "uploadPictures", "widget": UploadPicturesWidget()},
  {"route": "submissionConfirmation", "widget": SubmissionConfirmationWidget()}
];

class HostWidget extends StatefulWidget {
  const HostWidget({
    Key? key,
    this.width,
    this.height,
    required this.forwardBtnAction,
    required this.backwardBtnAction,
    required this.saveAndExidBtnAction,
    required this.startHostingAction,
    required this.locationAction,
    required this.amenitiesAction,
    required this.addphotoesAction,
    required this.apartmentSummaryAction,
    this.basicDetailsAction,
    this.submitedAction,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Future<dynamic> Function() forwardBtnAction;
  final Future<dynamic> Function() backwardBtnAction;
  final Future<dynamic> Function() saveAndExidBtnAction;
  final Future<dynamic> Function() startHostingAction;
  final Future<dynamic> Function() locationAction;
  final Future<dynamic> Function() amenitiesAction;
  final Future<dynamic> Function() addphotoesAction;
  final Future<dynamic> Function() apartmentSummaryAction;
  final Future<dynamic> Function()? basicDetailsAction;
  final Future<dynamic> Function()? submitedAction;

  @override
  _HostWidgetState createState() => _HostWidgetState();
}

class _HostWidgetState extends State<HostWidget> {
  late String forwardBtn;
  // late Color disableColor;
  // final disableColor = Color(0xccc8fa);

  @override
  void initState() {
    super.initState();
    FFAppState().webHostStepIndex = FFAppState().webHostSaveRoute != 0
        ? FFAppState().webHostSaveRoute
        : FFAppState().webHostStepIndex;

    print(" Debugging : ${FFAppState().webHostSaveRoute}");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    forwardBtn = FFAppState().webHostStepIndex == 0 ? "Get Started" : "Next";
    // disableColor = FlutterFlowTheme.of(context).disableButton;
    return SizedBox(
        width: size.width >= 1400 ? 1200 : size.width * 0.7,
        height: size.height * 0.6,
        // height: double.infinity,
        child: (webroutersList[FFAppState().webHostStepIndex]["widget"]
            as Widget));
  }

  nextBtnFunctionality() {
    FFAppState().update(() {
      if (FFAppState().webHostStepIndex < webroutersList.length - 1) {
        switch (FFAppState().webHostStepIndex) {
          case 0:
            widget.startHostingAction();
            break;
          case 2:
            widget.locationAction();
            break;
          case 4:
            widget.basicDetailsAction!();
            break;
          case 5:
            widget.amenitiesAction();
            break;
          case 8:
            widget.addphotoesAction();
            break;
          case 7:
            widget.apartmentSummaryAction();
            break;
          case 9:
            widget.submitedAction!();
            break;
          default:
            {
              widget.forwardBtnAction();
            }
        }
      } else {
        showSnackbar(context, "Host steps completed");
      }
    });
    setState(() {});
    return null;
  }

  showSnackbar(BuildContext context, String msg) {
    final snackBar = SnackBar(content: Text(msg));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
