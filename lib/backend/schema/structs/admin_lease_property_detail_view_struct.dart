// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminLeasePropertyDetailViewStruct extends BaseStruct {
  AdminLeasePropertyDetailViewStruct({
    String? articleId,
    int? status,
    String? city,
    int? propertyId,
    String? assignedPhase,
  })  : _articleId = articleId,
        _status = status,
        _city = city,
        _propertyId = propertyId,
        _assignedPhase = assignedPhase;

  // "articleId" field.
  String? _articleId;
  String get articleId => _articleId ?? '';
  set articleId(String? val) => _articleId = val;

  bool hasArticleId() => _articleId != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "propertyId" field.
  int? _propertyId;
  int get propertyId => _propertyId ?? 0;
  set propertyId(int? val) => _propertyId = val;

  void incrementPropertyId(int amount) => propertyId = propertyId + amount;

  bool hasPropertyId() => _propertyId != null;

  // "assignedPhase" field.
  String? _assignedPhase;
  String get assignedPhase => _assignedPhase ?? '';
  set assignedPhase(String? val) => _assignedPhase = val;

  bool hasAssignedPhase() => _assignedPhase != null;

  static AdminLeasePropertyDetailViewStruct fromMap(
          Map<String, dynamic> data) =>
      AdminLeasePropertyDetailViewStruct(
        articleId: data['articleId'] as String?,
        status: castToType<int>(data['status']),
        city: data['city'] as String?,
        propertyId: castToType<int>(data['propertyId']),
        assignedPhase: data['assignedPhase'] as String?,
      );

  static AdminLeasePropertyDetailViewStruct? maybeFromMap(dynamic data) => data
          is Map
      ? AdminLeasePropertyDetailViewStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'articleId': _articleId,
        'status': _status,
        'city': _city,
        'propertyId': _propertyId,
        'assignedPhase': _assignedPhase,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'articleId': serializeParam(
          _articleId,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'propertyId': serializeParam(
          _propertyId,
          ParamType.int,
        ),
        'assignedPhase': serializeParam(
          _assignedPhase,
          ParamType.String,
        ),
      }.withoutNulls;

  static AdminLeasePropertyDetailViewStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AdminLeasePropertyDetailViewStruct(
        articleId: deserializeParam(
          data['articleId'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        propertyId: deserializeParam(
          data['propertyId'],
          ParamType.int,
          false,
        ),
        assignedPhase: deserializeParam(
          data['assignedPhase'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AdminLeasePropertyDetailViewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdminLeasePropertyDetailViewStruct &&
        articleId == other.articleId &&
        status == other.status &&
        city == other.city &&
        propertyId == other.propertyId &&
        assignedPhase == other.assignedPhase;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([articleId, status, city, propertyId, assignedPhase]);
}

AdminLeasePropertyDetailViewStruct createAdminLeasePropertyDetailViewStruct({
  String? articleId,
  int? status,
  String? city,
  int? propertyId,
  String? assignedPhase,
}) =>
    AdminLeasePropertyDetailViewStruct(
      articleId: articleId,
      status: status,
      city: city,
      propertyId: propertyId,
      assignedPhase: assignedPhase,
    );
