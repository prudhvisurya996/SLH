// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SyncFisionCalendarDatesStruct extends BaseStruct {
  SyncFisionCalendarDatesStruct({
    String? blockedDates,
    String? partialBookedDates,
    String? availableFromDate,
  })  : _blockedDates = blockedDates,
        _partialBookedDates = partialBookedDates,
        _availableFromDate = availableFromDate;

  // "blockedDates" field.
  String? _blockedDates;
  String get blockedDates => _blockedDates ?? '';
  set blockedDates(String? val) => _blockedDates = val;

  bool hasBlockedDates() => _blockedDates != null;

  // "partialBookedDates" field.
  String? _partialBookedDates;
  String get partialBookedDates => _partialBookedDates ?? '';
  set partialBookedDates(String? val) => _partialBookedDates = val;

  bool hasPartialBookedDates() => _partialBookedDates != null;

  // "availableFromDate" field.
  String? _availableFromDate;
  String get availableFromDate => _availableFromDate ?? '';
  set availableFromDate(String? val) => _availableFromDate = val;

  bool hasAvailableFromDate() => _availableFromDate != null;

  static SyncFisionCalendarDatesStruct fromMap(Map<String, dynamic> data) =>
      SyncFisionCalendarDatesStruct(
        blockedDates: data['blockedDates'] as String?,
        partialBookedDates: data['partialBookedDates'] as String?,
        availableFromDate: data['availableFromDate'] as String?,
      );

  static SyncFisionCalendarDatesStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? SyncFisionCalendarDatesStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'blockedDates': _blockedDates,
        'partialBookedDates': _partialBookedDates,
        'availableFromDate': _availableFromDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'blockedDates': serializeParam(
          _blockedDates,
          ParamType.String,
        ),
        'partialBookedDates': serializeParam(
          _partialBookedDates,
          ParamType.String,
        ),
        'availableFromDate': serializeParam(
          _availableFromDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static SyncFisionCalendarDatesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SyncFisionCalendarDatesStruct(
        blockedDates: deserializeParam(
          data['blockedDates'],
          ParamType.String,
          false,
        ),
        partialBookedDates: deserializeParam(
          data['partialBookedDates'],
          ParamType.String,
          false,
        ),
        availableFromDate: deserializeParam(
          data['availableFromDate'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SyncFisionCalendarDatesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SyncFisionCalendarDatesStruct &&
        blockedDates == other.blockedDates &&
        partialBookedDates == other.partialBookedDates &&
        availableFromDate == other.availableFromDate;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([blockedDates, partialBookedDates, availableFromDate]);
}

SyncFisionCalendarDatesStruct createSyncFisionCalendarDatesStruct({
  String? blockedDates,
  String? partialBookedDates,
  String? availableFromDate,
}) =>
    SyncFisionCalendarDatesStruct(
      blockedDates: blockedDates,
      partialBookedDates: partialBookedDates,
      availableFromDate: availableFromDate,
    );
