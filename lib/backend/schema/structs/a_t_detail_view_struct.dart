// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ATDetailViewStruct extends BaseStruct {
  ATDetailViewStruct({
    int? reviewId,
    int? status,
  })  : _reviewId = reviewId,
        _status = status;

  // "reviewId" field.
  int? _reviewId;
  int get reviewId => _reviewId ?? 0;
  set reviewId(int? val) => _reviewId = val;

  void incrementReviewId(int amount) => reviewId = reviewId + amount;

  bool hasReviewId() => _reviewId != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  static ATDetailViewStruct fromMap(Map<String, dynamic> data) =>
      ATDetailViewStruct(
        reviewId: castToType<int>(data['reviewId']),
        status: castToType<int>(data['status']),
      );

  static ATDetailViewStruct? maybeFromMap(dynamic data) => data is Map
      ? ATDetailViewStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'reviewId': _reviewId,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'reviewId': serializeParam(
          _reviewId,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
      }.withoutNulls;

  static ATDetailViewStruct fromSerializableMap(Map<String, dynamic> data) =>
      ATDetailViewStruct(
        reviewId: deserializeParam(
          data['reviewId'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ATDetailViewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ATDetailViewStruct &&
        reviewId == other.reviewId &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([reviewId, status]);
}

ATDetailViewStruct createATDetailViewStruct({
  int? reviewId,
  int? status,
}) =>
    ATDetailViewStruct(
      reviewId: reviewId,
      status: status,
    );
