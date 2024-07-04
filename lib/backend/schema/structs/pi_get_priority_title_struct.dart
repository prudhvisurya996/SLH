// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PiGetPriorityTitleStruct extends BaseStruct {
  PiGetPriorityTitleStruct({
    int? priorityId,
    String? priorityTitle,
  })  : _priorityId = priorityId,
        _priorityTitle = priorityTitle;

  // "priorityId" field.
  int? _priorityId;
  int get priorityId => _priorityId ?? 0;
  set priorityId(int? val) => _priorityId = val;

  void incrementPriorityId(int amount) => priorityId = priorityId + amount;

  bool hasPriorityId() => _priorityId != null;

  // "priorityTitle" field.
  String? _priorityTitle;
  String get priorityTitle => _priorityTitle ?? '';
  set priorityTitle(String? val) => _priorityTitle = val;

  bool hasPriorityTitle() => _priorityTitle != null;

  static PiGetPriorityTitleStruct fromMap(Map<String, dynamic> data) =>
      PiGetPriorityTitleStruct(
        priorityId: castToType<int>(data['priorityId']),
        priorityTitle: data['priorityTitle'] as String?,
      );

  static PiGetPriorityTitleStruct? maybeFromMap(dynamic data) => data is Map
      ? PiGetPriorityTitleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'priorityId': _priorityId,
        'priorityTitle': _priorityTitle,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'priorityId': serializeParam(
          _priorityId,
          ParamType.int,
        ),
        'priorityTitle': serializeParam(
          _priorityTitle,
          ParamType.String,
        ),
      }.withoutNulls;

  static PiGetPriorityTitleStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PiGetPriorityTitleStruct(
        priorityId: deserializeParam(
          data['priorityId'],
          ParamType.int,
          false,
        ),
        priorityTitle: deserializeParam(
          data['priorityTitle'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PiGetPriorityTitleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PiGetPriorityTitleStruct &&
        priorityId == other.priorityId &&
        priorityTitle == other.priorityTitle;
  }

  @override
  int get hashCode => const ListEquality().hash([priorityId, priorityTitle]);
}

PiGetPriorityTitleStruct createPiGetPriorityTitleStruct({
  int? priorityId,
  String? priorityTitle,
}) =>
    PiGetPriorityTitleStruct(
      priorityId: priorityId,
      priorityTitle: priorityTitle,
    );
