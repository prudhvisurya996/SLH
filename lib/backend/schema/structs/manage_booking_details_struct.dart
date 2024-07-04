// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ManageBookingDetailsStruct extends BaseStruct {
  ManageBookingDetailsStruct({
    String? bookingId,
    bool? modifiable,
  })  : _bookingId = bookingId,
        _modifiable = modifiable;

  // "bookingId" field.
  String? _bookingId;
  String get bookingId => _bookingId ?? '';
  set bookingId(String? val) => _bookingId = val;

  bool hasBookingId() => _bookingId != null;

  // "Modifiable" field.
  bool? _modifiable;
  bool get modifiable => _modifiable ?? false;
  set modifiable(bool? val) => _modifiable = val;

  bool hasModifiable() => _modifiable != null;

  static ManageBookingDetailsStruct fromMap(Map<String, dynamic> data) =>
      ManageBookingDetailsStruct(
        bookingId: data['bookingId'] as String?,
        modifiable: data['Modifiable'] as bool?,
      );

  static ManageBookingDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? ManageBookingDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'bookingId': _bookingId,
        'Modifiable': _modifiable,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'bookingId': serializeParam(
          _bookingId,
          ParamType.String,
        ),
        'Modifiable': serializeParam(
          _modifiable,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ManageBookingDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ManageBookingDetailsStruct(
        bookingId: deserializeParam(
          data['bookingId'],
          ParamType.String,
          false,
        ),
        modifiable: deserializeParam(
          data['Modifiable'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ManageBookingDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ManageBookingDetailsStruct &&
        bookingId == other.bookingId &&
        modifiable == other.modifiable;
  }

  @override
  int get hashCode => const ListEquality().hash([bookingId, modifiable]);
}

ManageBookingDetailsStruct createManageBookingDetailsStruct({
  String? bookingId,
  bool? modifiable,
}) =>
    ManageBookingDetailsStruct(
      bookingId: bookingId,
      modifiable: modifiable,
    );
