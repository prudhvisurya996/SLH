// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExHostDetailViewStruct extends BaseStruct {
  ExHostDetailViewStruct({
    int? status,
    int? articleId,
  })  : _status = status,
        _articleId = articleId;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "articleId" field.
  int? _articleId;
  int get articleId => _articleId ?? 0;
  set articleId(int? val) => _articleId = val;

  void incrementArticleId(int amount) => articleId = articleId + amount;

  bool hasArticleId() => _articleId != null;

  static ExHostDetailViewStruct fromMap(Map<String, dynamic> data) =>
      ExHostDetailViewStruct(
        status: castToType<int>(data['status']),
        articleId: castToType<int>(data['articleId']),
      );

  static ExHostDetailViewStruct? maybeFromMap(dynamic data) => data is Map
      ? ExHostDetailViewStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'articleId': _articleId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'articleId': serializeParam(
          _articleId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ExHostDetailViewStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ExHostDetailViewStruct(
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        articleId: deserializeParam(
          data['articleId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ExHostDetailViewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExHostDetailViewStruct &&
        status == other.status &&
        articleId == other.articleId;
  }

  @override
  int get hashCode => const ListEquality().hash([status, articleId]);
}

ExHostDetailViewStruct createExHostDetailViewStruct({
  int? status,
  int? articleId,
}) =>
    ExHostDetailViewStruct(
      status: status,
      articleId: articleId,
    );
