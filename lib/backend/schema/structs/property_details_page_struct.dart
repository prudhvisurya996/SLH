// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyDetailsPageStruct extends BaseStruct {
  PropertyDetailsPageStruct({
    String? articleId,
    String? bookingId,
    int? propertyId,
  })  : _articleId = articleId,
        _bookingId = bookingId,
        _propertyId = propertyId;

  // "articleId" field.
  String? _articleId;
  String get articleId => _articleId ?? '';
  set articleId(String? val) => _articleId = val;

  bool hasArticleId() => _articleId != null;

  // "bookingId" field.
  String? _bookingId;
  String get bookingId => _bookingId ?? '';
  set bookingId(String? val) => _bookingId = val;

  bool hasBookingId() => _bookingId != null;

  // "propertyId" field.
  int? _propertyId;
  int get propertyId => _propertyId ?? 0;
  set propertyId(int? val) => _propertyId = val;

  void incrementPropertyId(int amount) => propertyId = propertyId + amount;

  bool hasPropertyId() => _propertyId != null;

  static PropertyDetailsPageStruct fromMap(Map<String, dynamic> data) =>
      PropertyDetailsPageStruct(
        articleId: data['articleId'] as String?,
        bookingId: data['bookingId'] as String?,
        propertyId: castToType<int>(data['propertyId']),
      );

  static PropertyDetailsPageStruct? maybeFromMap(dynamic data) => data is Map
      ? PropertyDetailsPageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'articleId': _articleId,
        'bookingId': _bookingId,
        'propertyId': _propertyId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'articleId': serializeParam(
          _articleId,
          ParamType.String,
        ),
        'bookingId': serializeParam(
          _bookingId,
          ParamType.String,
        ),
        'propertyId': serializeParam(
          _propertyId,
          ParamType.int,
        ),
      }.withoutNulls;

  static PropertyDetailsPageStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PropertyDetailsPageStruct(
        articleId: deserializeParam(
          data['articleId'],
          ParamType.String,
          false,
        ),
        bookingId: deserializeParam(
          data['bookingId'],
          ParamType.String,
          false,
        ),
        propertyId: deserializeParam(
          data['propertyId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PropertyDetailsPageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PropertyDetailsPageStruct &&
        articleId == other.articleId &&
        bookingId == other.bookingId &&
        propertyId == other.propertyId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([articleId, bookingId, propertyId]);
}

PropertyDetailsPageStruct createPropertyDetailsPageStruct({
  String? articleId,
  String? bookingId,
  int? propertyId,
}) =>
    PropertyDetailsPageStruct(
      articleId: articleId,
      bookingId: bookingId,
      propertyId: propertyId,
    );
