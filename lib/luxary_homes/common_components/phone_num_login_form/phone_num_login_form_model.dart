import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login/login_widget.dart';
import '/luxary_homes/common_components/register/register_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'phone_num_login_form_widget.dart' show PhoneNumLoginFormWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PhoneNumLoginFormModel extends FlutterFlowModel<PhoneNumLoginFormWidget> {
  ///  Local state fields for this component.

  bool? otpSent;

  String? mobileNumber;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CountryField widget.
  final countryFieldKey = GlobalKey();
  FocusNode? countryFieldFocusNode;
  TextEditingController? countryFieldTextController;
  String? countryFieldSelectedOption;
  String? Function(BuildContext, String?)? countryFieldTextControllerValidator;
  String? _countryFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }
    if (val != countryFieldSelectedOption) {
      return 'Invalid Data';
    }

    return null;
  }

  // State field(s) for mobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;
  String? _mobileNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 10) {
      return 'Please enter valid number';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Initial Mobile Num and OTP)] action in Button widget.
  ApiCallResponse? initiateOTPResponse;
  // State field(s) for Otp_field widget.
  TextEditingController? otpField;
  String? Function(BuildContext, String?)? otpFieldValidator;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 30000;
  int timerMilliseconds = 30000;
  String timerValue = StopWatchTimer.getDisplayTime(
    30000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Backend Call - API (Initial Mobile Num and OTP)] action in Text widget.
  ApiCallResponse? initiateOTPResponseCopy;
  // Stores action output result for [Backend Call - API (OTP Verification)] action in Button widget.
  ApiCallResponse? otpVerificationResponse;
  // Stores action output result for [Backend Call - API (User Details API)] action in Button widget.
  ApiCallResponse? userDetailsOuput1;
  // Stores action output result for [Custom Action - googleSignInAction] action in Google widget.
  bool? responseForAndroid;
  // Stores action output result for [Custom Action - googleSignInAction] action in Google widget.
  bool? responseForWeb;

  @override
  void initState(BuildContext context) {
    countryFieldTextControllerValidator = _countryFieldTextControllerValidator;
    mobileNumberTextControllerValidator = _mobileNumberTextControllerValidator;
    otpField = TextEditingController();
  }

  @override
  void dispose() {
    countryFieldFocusNode?.dispose();

    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();

    otpField?.dispose();
    timerController.dispose();
  }
}
