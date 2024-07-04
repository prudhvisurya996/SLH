// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchPageParametersStruct extends BaseStruct {
  SearchPageParametersStruct({
    int? index,
    int? id,
  })  : _index = index,
        _id = id;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static SearchPageParametersStruct fromMap(Map<String, dynamic> data) =>
      SearchPageParametersStruct(
        index: castToType<int>(data['index']),
        id: castToType<int>(data['id']),
      );

  static SearchPageParametersStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchPageParametersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'index': _index,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static SearchPageParametersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SearchPageParametersStruct(
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SearchPageParametersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchPageParametersStruct &&
        index == other.index &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([index, id]);
}

SearchPageParametersStruct createSearchPageParametersStruct({
  int? index,
  int? id,
}) =>
    SearchPageParametersStruct(
      index: index,
      id: id,
    );
