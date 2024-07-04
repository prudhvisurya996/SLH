// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PiDashboardStatusStruct extends BaseStruct {
  PiDashboardStatusStruct({
    bool? assignedtasks,
    bool? acceptedtasks,
    bool? completedtasks,
    bool? rejectedtask,
  })  : _assignedtasks = assignedtasks,
        _acceptedtasks = acceptedtasks,
        _completedtasks = completedtasks,
        _rejectedtask = rejectedtask;

  // "assignedtasks" field.
  bool? _assignedtasks;
  bool get assignedtasks => _assignedtasks ?? false;
  set assignedtasks(bool? val) => _assignedtasks = val;

  bool hasAssignedtasks() => _assignedtasks != null;

  // "acceptedtasks" field.
  bool? _acceptedtasks;
  bool get acceptedtasks => _acceptedtasks ?? false;
  set acceptedtasks(bool? val) => _acceptedtasks = val;

  bool hasAcceptedtasks() => _acceptedtasks != null;

  // "completedtasks" field.
  bool? _completedtasks;
  bool get completedtasks => _completedtasks ?? false;
  set completedtasks(bool? val) => _completedtasks = val;

  bool hasCompletedtasks() => _completedtasks != null;

  // "rejectedtask" field.
  bool? _rejectedtask;
  bool get rejectedtask => _rejectedtask ?? false;
  set rejectedtask(bool? val) => _rejectedtask = val;

  bool hasRejectedtask() => _rejectedtask != null;

  static PiDashboardStatusStruct fromMap(Map<String, dynamic> data) =>
      PiDashboardStatusStruct(
        assignedtasks: data['assignedtasks'] as bool?,
        acceptedtasks: data['acceptedtasks'] as bool?,
        completedtasks: data['completedtasks'] as bool?,
        rejectedtask: data['rejectedtask'] as bool?,
      );

  static PiDashboardStatusStruct? maybeFromMap(dynamic data) => data is Map
      ? PiDashboardStatusStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'assignedtasks': _assignedtasks,
        'acceptedtasks': _acceptedtasks,
        'completedtasks': _completedtasks,
        'rejectedtask': _rejectedtask,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'assignedtasks': serializeParam(
          _assignedtasks,
          ParamType.bool,
        ),
        'acceptedtasks': serializeParam(
          _acceptedtasks,
          ParamType.bool,
        ),
        'completedtasks': serializeParam(
          _completedtasks,
          ParamType.bool,
        ),
        'rejectedtask': serializeParam(
          _rejectedtask,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PiDashboardStatusStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PiDashboardStatusStruct(
        assignedtasks: deserializeParam(
          data['assignedtasks'],
          ParamType.bool,
          false,
        ),
        acceptedtasks: deserializeParam(
          data['acceptedtasks'],
          ParamType.bool,
          false,
        ),
        completedtasks: deserializeParam(
          data['completedtasks'],
          ParamType.bool,
          false,
        ),
        rejectedtask: deserializeParam(
          data['rejectedtask'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PiDashboardStatusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PiDashboardStatusStruct &&
        assignedtasks == other.assignedtasks &&
        acceptedtasks == other.acceptedtasks &&
        completedtasks == other.completedtasks &&
        rejectedtask == other.rejectedtask;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([assignedtasks, acceptedtasks, completedtasks, rejectedtask]);
}

PiDashboardStatusStruct createPiDashboardStatusStruct({
  bool? assignedtasks,
  bool? acceptedtasks,
  bool? completedtasks,
  bool? rejectedtask,
}) =>
    PiDashboardStatusStruct(
      assignedtasks: assignedtasks,
      acceptedtasks: acceptedtasks,
      completedtasks: completedtasks,
      rejectedtask: rejectedtask,
    );
