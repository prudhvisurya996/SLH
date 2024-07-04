// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataStruct extends BaseStruct {
  UserDataStruct({
    String? firstName,
    String? lastName,
    String? dateOfBirth,
    String? phoneNumber,
    String? emailAddress,
    bool? isAdmin,
    bool? isHost,
    int? userId,
    bool? isPortfolioManager,
    bool? isInternalHost,
    bool? isPI,
    bool? isAT,
  })  : _firstName = firstName,
        _lastName = lastName,
        _dateOfBirth = dateOfBirth,
        _phoneNumber = phoneNumber,
        _emailAddress = emailAddress,
        _isAdmin = isAdmin,
        _isHost = isHost,
        _userId = userId,
        _isPortfolioManager = isPortfolioManager,
        _isInternalHost = isInternalHost,
        _isPI = isPI,
        _isAT = isAT;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "dateOfBirth" field.
  String? _dateOfBirth;
  String get dateOfBirth => _dateOfBirth ?? '';
  set dateOfBirth(String? val) => _dateOfBirth = val;

  bool hasDateOfBirth() => _dateOfBirth != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "emailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  set emailAddress(String? val) => _emailAddress = val;

  bool hasEmailAddress() => _emailAddress != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  set isAdmin(bool? val) => _isAdmin = val;

  bool hasIsAdmin() => _isAdmin != null;

  // "isHost" field.
  bool? _isHost;
  bool get isHost => _isHost ?? false;
  set isHost(bool? val) => _isHost = val;

  bool hasIsHost() => _isHost != null;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "isPortfolioManager" field.
  bool? _isPortfolioManager;
  bool get isPortfolioManager => _isPortfolioManager ?? false;
  set isPortfolioManager(bool? val) => _isPortfolioManager = val;

  bool hasIsPortfolioManager() => _isPortfolioManager != null;

  // "isInternalHost" field.
  bool? _isInternalHost;
  bool get isInternalHost => _isInternalHost ?? false;
  set isInternalHost(bool? val) => _isInternalHost = val;

  bool hasIsInternalHost() => _isInternalHost != null;

  // "isPI" field.
  bool? _isPI;
  bool get isPI => _isPI ?? false;
  set isPI(bool? val) => _isPI = val;

  bool hasIsPI() => _isPI != null;

  // "isAT" field.
  bool? _isAT;
  bool get isAT => _isAT ?? false;
  set isAT(bool? val) => _isAT = val;

  bool hasIsAT() => _isAT != null;

  static UserDataStruct fromMap(Map<String, dynamic> data) => UserDataStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        dateOfBirth: data['dateOfBirth'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
        emailAddress: data['emailAddress'] as String?,
        isAdmin: data['isAdmin'] as bool?,
        isHost: data['isHost'] as bool?,
        userId: castToType<int>(data['userId']),
        isPortfolioManager: data['isPortfolioManager'] as bool?,
        isInternalHost: data['isInternalHost'] as bool?,
        isPI: data['isPI'] as bool?,
        isAT: data['isAT'] as bool?,
      );

  static UserDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'dateOfBirth': _dateOfBirth,
        'phoneNumber': _phoneNumber,
        'emailAddress': _emailAddress,
        'isAdmin': _isAdmin,
        'isHost': _isHost,
        'userId': _userId,
        'isPortfolioManager': _isPortfolioManager,
        'isInternalHost': _isInternalHost,
        'isPI': _isPI,
        'isAT': _isAT,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'dateOfBirth': serializeParam(
          _dateOfBirth,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'emailAddress': serializeParam(
          _emailAddress,
          ParamType.String,
        ),
        'isAdmin': serializeParam(
          _isAdmin,
          ParamType.bool,
        ),
        'isHost': serializeParam(
          _isHost,
          ParamType.bool,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'isPortfolioManager': serializeParam(
          _isPortfolioManager,
          ParamType.bool,
        ),
        'isInternalHost': serializeParam(
          _isInternalHost,
          ParamType.bool,
        ),
        'isPI': serializeParam(
          _isPI,
          ParamType.bool,
        ),
        'isAT': serializeParam(
          _isAT,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataStruct(
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        dateOfBirth: deserializeParam(
          data['dateOfBirth'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
        emailAddress: deserializeParam(
          data['emailAddress'],
          ParamType.String,
          false,
        ),
        isAdmin: deserializeParam(
          data['isAdmin'],
          ParamType.bool,
          false,
        ),
        isHost: deserializeParam(
          data['isHost'],
          ParamType.bool,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        isPortfolioManager: deserializeParam(
          data['isPortfolioManager'],
          ParamType.bool,
          false,
        ),
        isInternalHost: deserializeParam(
          data['isInternalHost'],
          ParamType.bool,
          false,
        ),
        isPI: deserializeParam(
          data['isPI'],
          ParamType.bool,
          false,
        ),
        isAT: deserializeParam(
          data['isAT'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        dateOfBirth == other.dateOfBirth &&
        phoneNumber == other.phoneNumber &&
        emailAddress == other.emailAddress &&
        isAdmin == other.isAdmin &&
        isHost == other.isHost &&
        userId == other.userId &&
        isPortfolioManager == other.isPortfolioManager &&
        isInternalHost == other.isInternalHost &&
        isPI == other.isPI &&
        isAT == other.isAT;
  }

  @override
  int get hashCode => const ListEquality().hash([
        firstName,
        lastName,
        dateOfBirth,
        phoneNumber,
        emailAddress,
        isAdmin,
        isHost,
        userId,
        isPortfolioManager,
        isInternalHost,
        isPI,
        isAT
      ]);
}

UserDataStruct createUserDataStruct({
  String? firstName,
  String? lastName,
  String? dateOfBirth,
  String? phoneNumber,
  String? emailAddress,
  bool? isAdmin,
  bool? isHost,
  int? userId,
  bool? isPortfolioManager,
  bool? isInternalHost,
  bool? isPI,
  bool? isAT,
}) =>
    UserDataStruct(
      firstName: firstName,
      lastName: lastName,
      dateOfBirth: dateOfBirth,
      phoneNumber: phoneNumber,
      emailAddress: emailAddress,
      isAdmin: isAdmin,
      isHost: isHost,
      userId: userId,
      isPortfolioManager: isPortfolioManager,
      isInternalHost: isInternalHost,
      isPI: isPI,
      isAT: isAT,
    );
