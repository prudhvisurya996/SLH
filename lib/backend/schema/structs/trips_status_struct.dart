// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TripsStatusStruct extends BaseStruct {
  TripsStatusStruct({
    bool? upComing,
    bool? cancelled,
    bool? completed,
    bool? inProgress,
  })  : _upComing = upComing,
        _cancelled = cancelled,
        _completed = completed,
        _inProgress = inProgress;

  // "upComing" field.
  bool? _upComing;
  bool get upComing => _upComing ?? false;
  set upComing(bool? val) => _upComing = val;

  bool hasUpComing() => _upComing != null;

  // "cancelled" field.
  bool? _cancelled;
  bool get cancelled => _cancelled ?? false;
  set cancelled(bool? val) => _cancelled = val;

  bool hasCancelled() => _cancelled != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  set completed(bool? val) => _completed = val;

  bool hasCompleted() => _completed != null;

  // "inProgress" field.
  bool? _inProgress;
  bool get inProgress => _inProgress ?? false;
  set inProgress(bool? val) => _inProgress = val;

  bool hasInProgress() => _inProgress != null;

  static TripsStatusStruct fromMap(Map<String, dynamic> data) =>
      TripsStatusStruct(
        upComing: data['upComing'] as bool?,
        cancelled: data['cancelled'] as bool?,
        completed: data['completed'] as bool?,
        inProgress: data['inProgress'] as bool?,
      );

  static TripsStatusStruct? maybeFromMap(dynamic data) => data is Map
      ? TripsStatusStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'upComing': _upComing,
        'cancelled': _cancelled,
        'completed': _completed,
        'inProgress': _inProgress,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'upComing': serializeParam(
          _upComing,
          ParamType.bool,
        ),
        'cancelled': serializeParam(
          _cancelled,
          ParamType.bool,
        ),
        'completed': serializeParam(
          _completed,
          ParamType.bool,
        ),
        'inProgress': serializeParam(
          _inProgress,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TripsStatusStruct fromSerializableMap(Map<String, dynamic> data) =>
      TripsStatusStruct(
        upComing: deserializeParam(
          data['upComing'],
          ParamType.bool,
          false,
        ),
        cancelled: deserializeParam(
          data['cancelled'],
          ParamType.bool,
          false,
        ),
        completed: deserializeParam(
          data['completed'],
          ParamType.bool,
          false,
        ),
        inProgress: deserializeParam(
          data['inProgress'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TripsStatusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TripsStatusStruct &&
        upComing == other.upComing &&
        cancelled == other.cancelled &&
        completed == other.completed &&
        inProgress == other.inProgress;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([upComing, cancelled, completed, inProgress]);
}

TripsStatusStruct createTripsStatusStruct({
  bool? upComing,
  bool? cancelled,
  bool? completed,
  bool? inProgress,
}) =>
    TripsStatusStruct(
      upComing: upComing,
      cancelled: cancelled,
      completed: completed,
      inProgress: inProgress,
    );
