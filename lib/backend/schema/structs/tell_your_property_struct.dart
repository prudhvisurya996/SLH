// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TellYourPropertyStruct extends BaseStruct {
  TellYourPropertyStruct({
    String? title,
    String? description,
    int? propertyTypeCatId,
  })  : _title = title,
        _description = description,
        _propertyTypeCatId = propertyTypeCatId;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "propertyTypeCatId" field.
  int? _propertyTypeCatId;
  int get propertyTypeCatId => _propertyTypeCatId ?? 0;
  set propertyTypeCatId(int? val) => _propertyTypeCatId = val;
  void incrementPropertyTypeCatId(int amount) =>
      _propertyTypeCatId = propertyTypeCatId + amount;
  bool hasPropertyTypeCatId() => _propertyTypeCatId != null;

  static TellYourPropertyStruct fromMap(Map<String, dynamic> data) =>
      TellYourPropertyStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        propertyTypeCatId: castToType<int>(data['propertyTypeCatId']),
      );

  static TellYourPropertyStruct? maybeFromMap(dynamic data) => data is Map
      ? TellYourPropertyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'propertyTypeCatId': _propertyTypeCatId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'propertyTypeCatId': serializeParam(
          _propertyTypeCatId,
          ParamType.int,
        ),
      }.withoutNulls;

  static TellYourPropertyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TellYourPropertyStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        propertyTypeCatId: deserializeParam(
          data['propertyTypeCatId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TellYourPropertyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TellYourPropertyStruct &&
        title == other.title &&
        description == other.description &&
        propertyTypeCatId == other.propertyTypeCatId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, description, propertyTypeCatId]);
}

TellYourPropertyStruct createTellYourPropertyStruct({
  String? title,
  String? description,
  int? propertyTypeCatId,
}) =>
    TellYourPropertyStruct(
      title: title,
      description: description,
      propertyTypeCatId: propertyTypeCatId,
    );
