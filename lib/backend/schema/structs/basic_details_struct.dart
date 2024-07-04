// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BasicDetailsStruct extends BaseStruct {
  BasicDetailsStruct({
    int? guestsCount,
    int? bedroomsCount,
    int? bedsCount,
    int? bathroomsCount,
  })  : _guestsCount = guestsCount,
        _bedroomsCount = bedroomsCount,
        _bedsCount = bedsCount,
        _bathroomsCount = bathroomsCount;

  // "guestsCount" field.
  int? _guestsCount;
  int get guestsCount => _guestsCount ?? 0;
  set guestsCount(int? val) => _guestsCount = val;
  void incrementGuestsCount(int amount) => _guestsCount = guestsCount + amount;
  bool hasGuestsCount() => _guestsCount != null;

  // "bedroomsCount" field.
  int? _bedroomsCount;
  int get bedroomsCount => _bedroomsCount ?? 0;
  set bedroomsCount(int? val) => _bedroomsCount = val;
  void incrementBedroomsCount(int amount) =>
      _bedroomsCount = bedroomsCount + amount;
  bool hasBedroomsCount() => _bedroomsCount != null;

  // "beds_count" field.
  int? _bedsCount;
  int get bedsCount => _bedsCount ?? 0;
  set bedsCount(int? val) => _bedsCount = val;
  void incrementBedsCount(int amount) => _bedsCount = bedsCount + amount;
  bool hasBedsCount() => _bedsCount != null;

  // "bathroomsCount" field.
  int? _bathroomsCount;
  int get bathroomsCount => _bathroomsCount ?? 0;
  set bathroomsCount(int? val) => _bathroomsCount = val;
  void incrementBathroomsCount(int amount) =>
      _bathroomsCount = bathroomsCount + amount;
  bool hasBathroomsCount() => _bathroomsCount != null;

  static BasicDetailsStruct fromMap(Map<String, dynamic> data) =>
      BasicDetailsStruct(
        guestsCount: castToType<int>(data['guestsCount']),
        bedroomsCount: castToType<int>(data['bedroomsCount']),
        bedsCount: castToType<int>(data['beds_count']),
        bathroomsCount: castToType<int>(data['bathroomsCount']),
      );

  static BasicDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? BasicDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'guestsCount': _guestsCount,
        'bedroomsCount': _bedroomsCount,
        'beds_count': _bedsCount,
        'bathroomsCount': _bathroomsCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'guestsCount': serializeParam(
          _guestsCount,
          ParamType.int,
        ),
        'bedroomsCount': serializeParam(
          _bedroomsCount,
          ParamType.int,
        ),
        'beds_count': serializeParam(
          _bedsCount,
          ParamType.int,
        ),
        'bathroomsCount': serializeParam(
          _bathroomsCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static BasicDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      BasicDetailsStruct(
        guestsCount: deserializeParam(
          data['guestsCount'],
          ParamType.int,
          false,
        ),
        bedroomsCount: deserializeParam(
          data['bedroomsCount'],
          ParamType.int,
          false,
        ),
        bedsCount: deserializeParam(
          data['beds_count'],
          ParamType.int,
          false,
        ),
        bathroomsCount: deserializeParam(
          data['bathroomsCount'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BasicDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BasicDetailsStruct &&
        guestsCount == other.guestsCount &&
        bedroomsCount == other.bedroomsCount &&
        bedsCount == other.bedsCount &&
        bathroomsCount == other.bathroomsCount;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([guestsCount, bedroomsCount, bedsCount, bathroomsCount]);
}

BasicDetailsStruct createBasicDetailsStruct({
  int? guestsCount,
  int? bedroomsCount,
  int? bedsCount,
  int? bathroomsCount,
}) =>
    BasicDetailsStruct(
      guestsCount: guestsCount,
      bedroomsCount: bedroomsCount,
      bedsCount: bedsCount,
      bathroomsCount: bathroomsCount,
    );
