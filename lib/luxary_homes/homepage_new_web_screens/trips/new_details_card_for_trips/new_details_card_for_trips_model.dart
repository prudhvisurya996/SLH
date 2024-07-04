import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'new_details_card_for_trips_widget.dart'
    show NewDetailsCardForTripsWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewDetailsCardForTripsModel
    extends FlutterFlowModel<NewDetailsCardForTripsWidget> {
  ///  Local state fields for this component.

  int? roomsCount;

  bool? isEntirePropertyBooking;

  int? guestCount;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
