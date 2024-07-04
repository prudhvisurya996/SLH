// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ATDashboardStatusStruct extends BaseStruct {
  ATDashboardStatusStruct({
    bool? assignedTasks,
    bool? acceptedTasks,
    bool? completedTasks,
    bool? rejectedTasks,
  })  : _assignedTasks = assignedTasks,
        _acceptedTasks = acceptedTasks,
        _completedTasks = completedTasks,
        _rejectedTasks = rejectedTasks;

  // "assignedTasks" field.
  bool? _assignedTasks;
  bool get assignedTasks => _assignedTasks ?? false;
  set assignedTasks(bool? val) => _assignedTasks = val;

  bool hasAssignedTasks() => _assignedTasks != null;

  // "acceptedTasks" field.
  bool? _acceptedTasks;
  bool get acceptedTasks => _acceptedTasks ?? false;
  set acceptedTasks(bool? val) => _acceptedTasks = val;

  bool hasAcceptedTasks() => _acceptedTasks != null;

  // "completedTasks" field.
  bool? _completedTasks;
  bool get completedTasks => _completedTasks ?? false;
  set completedTasks(bool? val) => _completedTasks = val;

  bool hasCompletedTasks() => _completedTasks != null;

  // "rejectedTasks" field.
  bool? _rejectedTasks;
  bool get rejectedTasks => _rejectedTasks ?? false;
  set rejectedTasks(bool? val) => _rejectedTasks = val;

  bool hasRejectedTasks() => _rejectedTasks != null;

  static ATDashboardStatusStruct fromMap(Map<String, dynamic> data) =>
      ATDashboardStatusStruct(
        assignedTasks: data['assignedTasks'] as bool?,
        acceptedTasks: data['acceptedTasks'] as bool?,
        completedTasks: data['completedTasks'] as bool?,
        rejectedTasks: data['rejectedTasks'] as bool?,
      );

  static ATDashboardStatusStruct? maybeFromMap(dynamic data) => data is Map
      ? ATDashboardStatusStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'assignedTasks': _assignedTasks,
        'acceptedTasks': _acceptedTasks,
        'completedTasks': _completedTasks,
        'rejectedTasks': _rejectedTasks,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'assignedTasks': serializeParam(
          _assignedTasks,
          ParamType.bool,
        ),
        'acceptedTasks': serializeParam(
          _acceptedTasks,
          ParamType.bool,
        ),
        'completedTasks': serializeParam(
          _completedTasks,
          ParamType.bool,
        ),
        'rejectedTasks': serializeParam(
          _rejectedTasks,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ATDashboardStatusStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ATDashboardStatusStruct(
        assignedTasks: deserializeParam(
          data['assignedTasks'],
          ParamType.bool,
          false,
        ),
        acceptedTasks: deserializeParam(
          data['acceptedTasks'],
          ParamType.bool,
          false,
        ),
        completedTasks: deserializeParam(
          data['completedTasks'],
          ParamType.bool,
          false,
        ),
        rejectedTasks: deserializeParam(
          data['rejectedTasks'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ATDashboardStatusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ATDashboardStatusStruct &&
        assignedTasks == other.assignedTasks &&
        acceptedTasks == other.acceptedTasks &&
        completedTasks == other.completedTasks &&
        rejectedTasks == other.rejectedTasks;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([assignedTasks, acceptedTasks, completedTasks, rejectedTasks]);
}

ATDashboardStatusStruct createATDashboardStatusStruct({
  bool? assignedTasks,
  bool? acceptedTasks,
  bool? completedTasks,
  bool? rejectedTasks,
}) =>
    ATDashboardStatusStruct(
      assignedTasks: assignedTasks,
      acceptedTasks: acceptedTasks,
      completedTasks: completedTasks,
      rejectedTasks: rejectedTasks,
    );
