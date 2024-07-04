// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HostDetailViewStruct extends BaseStruct {
  HostDetailViewStruct({
    int? status,
    int? propertyId,
  })  : _status = status,
        _propertyId = propertyId;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "propertyId" field.
  int? _propertyId;
  int get propertyId => _propertyId ?? 0;
  set propertyId(int? val) => _propertyId = val;

  void incrementPropertyId(int amount) => propertyId = propertyId + amount;

  bool hasPropertyId() => _propertyId != null;

  static HostDetailViewStruct fromMap(Map<String, dynamic> data) =>
      HostDetailViewStruct(
        status: castToType<int>(data['status']),
        propertyId: castToType<int>(data['propertyId']),
      );

  static HostDetailViewStruct? maybeFromMap(dynamic data) => data is Map
      ? HostDetailViewStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'propertyId': _propertyId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'propertyId': serializeParam(
          _propertyId,
          ParamType.int,
        ),
      }.withoutNulls;

  static HostDetailViewStruct fromSerializableMap(Map<String, dynamic> data) =>
      HostDetailViewStruct(
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        propertyId: deserializeParam(
          data['propertyId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'HostDetailViewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HostDetailViewStruct &&
        status == other.status &&
        propertyId == other.propertyId;
  }

  @override
  int get hashCode => const ListEquality().hash([status, propertyId]);
}

HostDetailViewStruct createHostDetailViewStruct({
  int? status,
  int? propertyId,
}) =>
    HostDetailViewStruct(
      status: status,
      propertyId: propertyId,
    );
