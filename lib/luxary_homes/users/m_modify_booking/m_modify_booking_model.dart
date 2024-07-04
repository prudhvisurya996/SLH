import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/users/modify_booking_confirm/modify_booking_confirm_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'm_modify_booking_widget.dart' show MModifyBookingWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MModifyBookingModel extends FlutterFlowModel<MModifyBookingWidget> {
  ///  Local state fields for this page.

  List<DateTime> selectedFromToDates = [];
  void addToSelectedFromToDates(DateTime item) => selectedFromToDates.add(item);
  void removeFromSelectedFromToDates(DateTime item) =>
      selectedFromToDates.remove(item);
  void removeAtIndexFromSelectedFromToDates(int index) =>
      selectedFromToDates.removeAt(index);
  void insertAtIndexInSelectedFromToDates(int index, DateTime item) =>
      selectedFromToDates.insert(index, item);
  void updateSelectedFromToDatesAtIndex(
          int index, Function(DateTime) updateFn) =>
      selectedFromToDates[index] = updateFn(selectedFromToDates[index]);

  int? guestCount;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
