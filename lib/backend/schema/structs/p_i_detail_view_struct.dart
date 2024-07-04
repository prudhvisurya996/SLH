// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PIDetailViewStruct extends BaseStruct {
  PIDetailViewStruct({
    int? reviewId,
    int? propertyStatus,
  })  : _reviewId = reviewId,
        _propertyStatus = propertyStatus;

  // "reviewId" field.
  int? _reviewId;
  int get reviewId => _reviewId ?? 0;
  set reviewId(int? val) => _reviewId = val;

  void incrementReviewId(int amount) => reviewId = reviewId + amount;

  bool hasReviewId() => _reviewId != null;

  // "propertyStatus" field.
  int? _propertyStatus;
  int get propertyStatus => _propertyStatus ?? 0;
  set propertyStatus(int? val) => _propertyStatus = val;

  void incrementPropertyStatus(int amount) =>
      propertyStatus = propertyStatus + amount;

  bool hasPropertyStatus() => _propertyStatus != null;

  static PIDetailViewStruct fromMap(Map<String, dynamic> data) =>
      PIDetailViewStruct(
        reviewId: castToType<int>(data['reviewId']),
        propertyStatus: castToType<int>(data['propertyStatus']),
      );

  static PIDetailViewStruct? maybeFromMap(dynamic data) => data is Map
      ? PIDetailViewStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'reviewId': _reviewId,
        'propertyStatus': _propertyStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'reviewId': serializeParam(
          _reviewId,
          ParamType.int,
        ),
        'propertyStatus': serializeParam(
          _propertyStatus,
          ParamType.int,
        ),
      }.withoutNulls;

  static PIDetailViewStruct fromSerializableMap(Map<String, dynamic> data) =>
      PIDetailViewStruct(
        reviewId: deserializeParam(
          data['reviewId'],
          ParamType.int,
          false,
        ),
        propertyStatus: deserializeParam(
          data['propertyStatus'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PIDetailViewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PIDetailViewStruct &&
        reviewId == other.reviewId &&
        propertyStatus == other.propertyStatus;
  }

  @override
  int get hashCode => const ListEquality().hash([reviewId, propertyStatus]);
}

PIDetailViewStruct createPIDetailViewStruct({
  int? reviewId,
  int? propertyStatus,
}) =>
    PIDetailViewStruct(
      reviewId: reviewId,
      propertyStatus: propertyStatus,
    );
