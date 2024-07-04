import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/common_components/forgot_password/forgot_password_widget.dart';
import '/luxary_homes/common_components/forgot_password_success/forgot_password_success_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/common_components/register/register_widget.dart';
import '/luxary_homes/common_components/register_success/register_success_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'login_form_widget.dart' show LoginFormWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginFormModel extends FlutterFlowModel<LoginFormWidget> {
  ///  Local state fields for this component.

  bool showLoginApiError = false;

  bool? otpSent1;

  String? mobileNumber1;

  bool showBirthdayError1 = false;

  bool showRegisterApiError1 = false;

  List<String> postalCodeLocalities1 = [];
  void addToPostalCodeLocalities1(String item) =>
      postalCodeLocalities1.add(item);
  void removeFromPostalCodeLocalities1(String item) =>
      postalCodeLocalities1.remove(item);
  void removeAtIndexFromPostalCodeLocalities1(int index) =>
      postalCodeLocalities1.removeAt(index);
  void insertAtIndexInPostalCodeLocalities1(int index, String item) =>
      postalCodeLocalities1.insert(index, item);
  void updatePostalCodeLocalities1AtIndex(
          int index, Function(String) updateFn) =>
      postalCodeLocalities1[index] = updateFn(postalCodeLocalities1[index]);

  bool showForgotApiError1 = false;

  ///  State fields for stateful widgets in this component.

  final formKey5 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode1;
  TextEditingController? emailTextFieldTextController1;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController1Validator;
  String? _emailTextFieldTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required.';
    }

    if (!RegExp(
            '^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&\'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\\.[a-zA-Z]+')
        .hasMatch(val)) {
      return 'Invalid Email';
    }
    return null;
  }

  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  String? _passwordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Auth Token API)] action in PasswordTextField widget.
  ApiCallResponse? authTokenOutputCopy;
  // Stores action output result for [Backend Call - API (User Details API)] action in PasswordTextField widget.
  ApiCallResponse? userDetailsOuputCopy;
  // Stores action output result for [Backend Call - API (Auth Token API)] action in Button widget.
  ApiCallResponse? authTokenOutput;
  // Stores action output result for [Backend Call - API (User Details API)] action in Button widget.
  ApiCallResponse? userDetailsOuput;
  // Stores action output result for [Custom Action - googleSignInAction] action in Image widget.
  bool? responseForAndroid;
  // Stores action output result for [Custom Action - googleSignInAction] action in Image widget.
  bool? responseForWeb;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for Emailloginweb widget.
  FocusNode? emailloginwebFocusNode;
  TextEditingController? emailloginwebTextController;
  String? Function(BuildContext, String?)? emailloginwebTextControllerValidator;
  String? _emailloginwebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required.';
    }

    if (!RegExp(
            '^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&\'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\\.[a-zA-Z]+')
        .hasMatch(val)) {
      return 'Invalid Email';
    }
    return null;
  }

  // State field(s) for Passwordloginweb widget.
  FocusNode? passwordloginwebFocusNode;
  TextEditingController? passwordloginwebTextController;
  late bool passwordloginwebVisibility;
  String? Function(BuildContext, String?)?
      passwordloginwebTextControllerValidator;
  String? _passwordloginwebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Auth Token API)] action in Passwordloginweb widget.
  ApiCallResponse? authTokenOutputCopytabweb;
  // Stores action output result for [Backend Call - API (User Details API)] action in Passwordloginweb widget.
  ApiCallResponse? userDetailsOuputCopytabweb;
  // Stores action output result for [Backend Call - API (Auth Token API)] action in Button widget.
  ApiCallResponse? authTokenOutputtabweb;
  // Stores action output result for [Backend Call - API (User Details API)] action in Button widget.
  ApiCallResponse? userDetailsOuputtabweb;
  // Stores action output result for [Custom Action - googleSignInAction] action in Image widget.
  bool? responseForWebCopy;
  // State field(s) for numCountryLoginWeb widget.
  final numCountryLoginWebKey = GlobalKey();
  FocusNode? numCountryLoginWebFocusNode;
  TextEditingController? numCountryLoginWebTextController;
  String? numCountryLoginWebSelectedOption;
  String? Function(BuildContext, String?)?
      numCountryLoginWebTextControllerValidator;
  String? _numCountryLoginWebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }
    if (val != numCountryLoginWebSelectedOption) {
      return 'Invalid Data';
    }

    return null;
  }

  // State field(s) for newNumberLoginWeb widget.
  FocusNode? newNumberLoginWebFocusNode;
  TextEditingController? newNumberLoginWebTextController;
  String? Function(BuildContext, String?)?
      newNumberLoginWebTextControllerValidator;
  String? _newNumberLoginWebTextControllerValidator(
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
  ApiCallResponse? initiateOTPResponseTabWeb;
  // State field(s) for newOtp_field widget.
  TextEditingController? newOtpField;
  String? Function(BuildContext, String?)? newOtpFieldValidator;
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

  // Stores action output result for [Backend Call - API (OTP Verification)] action in Button widget.
  ApiCallResponse? otpVerificationResponsetabweb;
  // Stores action output result for [Backend Call - API (User Details API)] action in Button widget.
  ApiCallResponse? userDetailsOuput1TabWeb;
  // Stores action output result for [Custom Action - googleSignInAction] action in Google widget.
  bool? responseForTabWeb;
  // State field(s) for newFirstNameSignweb widget.
  FocusNode? newFirstNameSignwebFocusNode;
  TextEditingController? newFirstNameSignwebTextController;
  String? Function(BuildContext, String?)?
      newFirstNameSignwebTextControllerValidator;
  String? _newFirstNameSignwebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'First name  is required.';
    }

    if (val.length < 3) {
      return 'Required minimum 3 characters.';
    }

    if (!RegExp('^[^\\s\\d][A-Za-z\\s]*\$').hasMatch(val)) {
      return 'Enter valid name.';
    }
    return null;
  }

  // State field(s) for newLastNameSignweb widget.
  FocusNode? newLastNameSignwebFocusNode;
  TextEditingController? newLastNameSignwebTextController;
  String? Function(BuildContext, String?)?
      newLastNameSignwebTextControllerValidator;
  String? _newLastNameSignwebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Last name is required.';
    }

    if (val.length < 3) {
      return 'Required minimum 3 characters.';
    }

    if (!RegExp('^[^\\s\\d][A-Za-z\\s]*\$').hasMatch(val)) {
      return 'Enter valid name.';
    }
    return null;
  }

  DateTime? datePicked;
  // State field(s) for newMobileNumberSignWeb widget.
  FocusNode? newMobileNumberSignWebFocusNode;
  TextEditingController? newMobileNumberSignWebTextController;
  String? Function(BuildContext, String?)?
      newMobileNumberSignWebTextControllerValidator;
  String? _newMobileNumberSignWebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Mobile number is required.';
    }

    if (val.length < 10) {
      return 'Mobile number should have 10 digits.';
    }

    return null;
  }

  // State field(s) for newEmailSignWeb widget.
  FocusNode? newEmailSignWebFocusNode;
  TextEditingController? newEmailSignWebTextController;
  String? Function(BuildContext, String?)?
      newEmailSignWebTextControllerValidator;
  String? _newEmailSignWebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required.';
    }

    if (!RegExp(
            '^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&\'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\\.[a-zA-Z]+')
        .hasMatch(val)) {
      return 'Invalid email.';
    }
    return null;
  }

  // State field(s) for newpincodeSignWeb widget.
  FocusNode? newpincodeSignWebFocusNode;
  TextEditingController? newpincodeSignWebTextController;
  String? Function(BuildContext, String?)?
      newpincodeSignWebTextControllerValidator;
  String? _newpincodeSignWebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (getDataFromPinCode)] action in newpincodeSignWeb widget.
  ApiCallResponse? pincodeResponseSignUpTabWeb;
  // State field(s) for newCountrySignWeb widget.
  FocusNode? newCountrySignWebFocusNode;
  TextEditingController? newCountrySignWebTextController;
  String? Function(BuildContext, String?)?
      newCountrySignWebTextControllerValidator;
  // State field(s) for newStateSignWeb widget.
  FocusNode? newStateSignWebFocusNode;
  TextEditingController? newStateSignWebTextController;
  String? Function(BuildContext, String?)?
      newStateSignWebTextControllerValidator;
  // State field(s) for newCityTownSignWeb widget.
  FocusNode? newCityTownSignWebFocusNode;
  TextEditingController? newCityTownSignWebTextController;
  String? Function(BuildContext, String?)?
      newCityTownSignWebTextControllerValidator;
  // State field(s) for newlocalitySignWeb widget.
  String? newlocalitySignWebValue;
  FormFieldController<String>? newlocalitySignWebValueController;
  // State field(s) for newLocalitySignWeb widget.
  FocusNode? newLocalitySignWebFocusNode;
  TextEditingController? newLocalitySignWebTextController;
  String? Function(BuildContext, String?)?
      newLocalitySignWebTextControllerValidator;
  // State field(s) for StreetSignWeb widget.
  FocusNode? streetSignWebFocusNode;
  TextEditingController? streetSignWebTextController;
  String? Function(BuildContext, String?)? streetSignWebTextControllerValidator;
  String? _streetSignWebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Registration API)] action in Button widget.
  ApiCallResponse? registerOutputTabWeb;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode2;
  TextEditingController? emailTextFieldTextController2;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController2Validator;
  String? _emailTextFieldTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required.';
    }

    if (!RegExp(
            '^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&\'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\\.[a-zA-Z]+')
        .hasMatch(val)) {
      return 'Invalid email.';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (Forgot Password API)] action in Button widget.
  ApiCallResponse? forgotPswOutput1;

  @override
  void initState(BuildContext context) {
    emailTextFieldTextController1Validator =
        _emailTextFieldTextController1Validator;
    passwordTextFieldVisibility = false;
    passwordTextFieldTextControllerValidator =
        _passwordTextFieldTextControllerValidator;
    emailloginwebTextControllerValidator =
        _emailloginwebTextControllerValidator;
    passwordloginwebVisibility = false;
    passwordloginwebTextControllerValidator =
        _passwordloginwebTextControllerValidator;
    numCountryLoginWebTextControllerValidator =
        _numCountryLoginWebTextControllerValidator;
    newNumberLoginWebTextControllerValidator =
        _newNumberLoginWebTextControllerValidator;
    newOtpField = TextEditingController();
    newFirstNameSignwebTextControllerValidator =
        _newFirstNameSignwebTextControllerValidator;
    newLastNameSignwebTextControllerValidator =
        _newLastNameSignwebTextControllerValidator;
    newMobileNumberSignWebTextControllerValidator =
        _newMobileNumberSignWebTextControllerValidator;
    newEmailSignWebTextControllerValidator =
        _newEmailSignWebTextControllerValidator;
    newpincodeSignWebTextControllerValidator =
        _newpincodeSignWebTextControllerValidator;
    streetSignWebTextControllerValidator =
        _streetSignWebTextControllerValidator;
    emailTextFieldTextController2Validator =
        _emailTextFieldTextController2Validator;
  }

  @override
  void dispose() {
    emailTextFieldFocusNode1?.dispose();
    emailTextFieldTextController1?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    emailloginwebFocusNode?.dispose();
    emailloginwebTextController?.dispose();

    passwordloginwebFocusNode?.dispose();
    passwordloginwebTextController?.dispose();

    numCountryLoginWebFocusNode?.dispose();

    newNumberLoginWebFocusNode?.dispose();
    newNumberLoginWebTextController?.dispose();

    newOtpField?.dispose();
    timerController.dispose();
    newFirstNameSignwebFocusNode?.dispose();
    newFirstNameSignwebTextController?.dispose();

    newLastNameSignwebFocusNode?.dispose();
    newLastNameSignwebTextController?.dispose();

    newMobileNumberSignWebFocusNode?.dispose();
    newMobileNumberSignWebTextController?.dispose();

    newEmailSignWebFocusNode?.dispose();
    newEmailSignWebTextController?.dispose();

    newpincodeSignWebFocusNode?.dispose();
    newpincodeSignWebTextController?.dispose();

    newCountrySignWebFocusNode?.dispose();
    newCountrySignWebTextController?.dispose();

    newStateSignWebFocusNode?.dispose();
    newStateSignWebTextController?.dispose();

    newCityTownSignWebFocusNode?.dispose();
    newCityTownSignWebTextController?.dispose();

    newLocalitySignWebFocusNode?.dispose();
    newLocalitySignWebTextController?.dispose();

    streetSignWebFocusNode?.dispose();
    streetSignWebTextController?.dispose();

    emailTextFieldFocusNode2?.dispose();
    emailTextFieldTextController2?.dispose();
  }
}
