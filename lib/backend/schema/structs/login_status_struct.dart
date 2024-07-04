// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginStatusStruct extends BaseStruct {
  LoginStatusStruct({
    bool? loginwithEmail,
    bool? signUp,
    bool? loginwitphNumber,
    bool? forgotPassword,
  })  : _loginwithEmail = loginwithEmail,
        _signUp = signUp,
        _loginwitphNumber = loginwitphNumber,
        _forgotPassword = forgotPassword;

  // "loginwithEmail" field.
  bool? _loginwithEmail;
  bool get loginwithEmail => _loginwithEmail ?? false;
  set loginwithEmail(bool? val) => _loginwithEmail = val;

  bool hasLoginwithEmail() => _loginwithEmail != null;

  // "signUp" field.
  bool? _signUp;
  bool get signUp => _signUp ?? false;
  set signUp(bool? val) => _signUp = val;

  bool hasSignUp() => _signUp != null;

  // "loginwitphNumber" field.
  bool? _loginwitphNumber;
  bool get loginwitphNumber => _loginwitphNumber ?? false;
  set loginwitphNumber(bool? val) => _loginwitphNumber = val;

  bool hasLoginwitphNumber() => _loginwitphNumber != null;

  // "forgotPassword" field.
  bool? _forgotPassword;
  bool get forgotPassword => _forgotPassword ?? false;
  set forgotPassword(bool? val) => _forgotPassword = val;

  bool hasForgotPassword() => _forgotPassword != null;

  static LoginStatusStruct fromMap(Map<String, dynamic> data) =>
      LoginStatusStruct(
        loginwithEmail: data['loginwithEmail'] as bool?,
        signUp: data['signUp'] as bool?,
        loginwitphNumber: data['loginwitphNumber'] as bool?,
        forgotPassword: data['forgotPassword'] as bool?,
      );

  static LoginStatusStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginStatusStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'loginwithEmail': _loginwithEmail,
        'signUp': _signUp,
        'loginwitphNumber': _loginwitphNumber,
        'forgotPassword': _forgotPassword,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'loginwithEmail': serializeParam(
          _loginwithEmail,
          ParamType.bool,
        ),
        'signUp': serializeParam(
          _signUp,
          ParamType.bool,
        ),
        'loginwitphNumber': serializeParam(
          _loginwitphNumber,
          ParamType.bool,
        ),
        'forgotPassword': serializeParam(
          _forgotPassword,
          ParamType.bool,
        ),
      }.withoutNulls;

  static LoginStatusStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginStatusStruct(
        loginwithEmail: deserializeParam(
          data['loginwithEmail'],
          ParamType.bool,
          false,
        ),
        signUp: deserializeParam(
          data['signUp'],
          ParamType.bool,
          false,
        ),
        loginwitphNumber: deserializeParam(
          data['loginwitphNumber'],
          ParamType.bool,
          false,
        ),
        forgotPassword: deserializeParam(
          data['forgotPassword'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'LoginStatusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginStatusStruct &&
        loginwithEmail == other.loginwithEmail &&
        signUp == other.signUp &&
        loginwitphNumber == other.loginwitphNumber &&
        forgotPassword == other.forgotPassword;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([loginwithEmail, signUp, loginwitphNumber, forgotPassword]);
}

LoginStatusStruct createLoginStatusStruct({
  bool? loginwithEmail,
  bool? signUp,
  bool? loginwitphNumber,
  bool? forgotPassword,
}) =>
    LoginStatusStruct(
      loginwithEmail: loginwithEmail,
      signUp: signUp,
      loginwitphNumber: loginwitphNumber,
      forgotPassword: forgotPassword,
    );
