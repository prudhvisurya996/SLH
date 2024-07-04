// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AmenitiesStruct extends BaseStruct {
  AmenitiesStruct({
    String? yes,
  }) : _yes = yes;

  // "yes" field.
  String? _yes;
  String get yes => _yes ?? '';
  set yes(String? val) => _yes = val;

  bool hasYes() => _yes != null;

  static AmenitiesStruct fromMap(Map<String, dynamic> data) => AmenitiesStruct(
        yes: data['yes'] as String?,
      );

  static AmenitiesStruct? maybeFromMap(dynamic data) => data is Map
      ? AmenitiesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'yes': _yes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'yes': serializeParam(
          _yes,
          ParamType.String,
        ),
      }.withoutNulls;

  static AmenitiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      AmenitiesStruct(
        yes: deserializeParam(
          data['yes'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AmenitiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AmenitiesStruct && yes == other.yes;
  }

  @override
  int get hashCode => const ListEquality().hash([yes]);
}

AmenitiesStruct createAmenitiesStruct({
  String? yes,
}) =>
    AmenitiesStruct(
      yes: yes,
    );
