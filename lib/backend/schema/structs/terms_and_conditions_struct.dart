// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TermsAndConditionsStruct extends BaseStruct {
  TermsAndConditionsStruct({
    String? articleName,
  }) : _articleName = articleName;

  // "articleName" field.
  String? _articleName;
  String get articleName => _articleName ?? '';
  set articleName(String? val) => _articleName = val;

  bool hasArticleName() => _articleName != null;

  static TermsAndConditionsStruct fromMap(Map<String, dynamic> data) =>
      TermsAndConditionsStruct(
        articleName: data['articleName'] as String?,
      );

  static TermsAndConditionsStruct? maybeFromMap(dynamic data) => data is Map
      ? TermsAndConditionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'articleName': _articleName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'articleName': serializeParam(
          _articleName,
          ParamType.String,
        ),
      }.withoutNulls;

  static TermsAndConditionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TermsAndConditionsStruct(
        articleName: deserializeParam(
          data['articleName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TermsAndConditionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TermsAndConditionsStruct &&
        articleName == other.articleName;
  }

  @override
  int get hashCode => const ListEquality().hash([articleName]);
}

TermsAndConditionsStruct createTermsAndConditionsStruct({
  String? articleName,
}) =>
    TermsAndConditionsStruct(
      articleName: articleName,
    );
