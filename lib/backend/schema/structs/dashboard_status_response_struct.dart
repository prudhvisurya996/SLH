// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DashboardStatusResponseStruct extends BaseStruct {
  DashboardStatusResponseStruct({
    int? internalDashboardStatus,
  }) : _internalDashboardStatus = internalDashboardStatus;

  // "internalDashboardStatus" field.
  int? _internalDashboardStatus;
  int get internalDashboardStatus => _internalDashboardStatus ?? 0;
  set internalDashboardStatus(int? val) => _internalDashboardStatus = val;

  void incrementInternalDashboardStatus(int amount) =>
      internalDashboardStatus = internalDashboardStatus + amount;

  bool hasInternalDashboardStatus() => _internalDashboardStatus != null;

  static DashboardStatusResponseStruct fromMap(Map<String, dynamic> data) =>
      DashboardStatusResponseStruct(
        internalDashboardStatus:
            castToType<int>(data['internalDashboardStatus']),
      );

  static DashboardStatusResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? DashboardStatusResponseStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'internalDashboardStatus': _internalDashboardStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'internalDashboardStatus': serializeParam(
          _internalDashboardStatus,
          ParamType.int,
        ),
      }.withoutNulls;

  static DashboardStatusResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DashboardStatusResponseStruct(
        internalDashboardStatus: deserializeParam(
          data['internalDashboardStatus'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DashboardStatusResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DashboardStatusResponseStruct &&
        internalDashboardStatus == other.internalDashboardStatus;
  }

  @override
  int get hashCode => const ListEquality().hash([internalDashboardStatus]);
}

DashboardStatusResponseStruct createDashboardStatusResponseStruct({
  int? internalDashboardStatus,
}) =>
    DashboardStatusResponseStruct(
      internalDashboardStatus: internalDashboardStatus,
    );
