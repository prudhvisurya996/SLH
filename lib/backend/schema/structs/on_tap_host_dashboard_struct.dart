// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnTapHostDashboardStruct extends BaseStruct {
  OnTapHostDashboardStruct({
    bool? activeTab,
    bool? pendingTab,
    bool? rejectedTab,
    bool? blockedTab,
  })  : _activeTab = activeTab,
        _pendingTab = pendingTab,
        _rejectedTab = rejectedTab,
        _blockedTab = blockedTab;

  // "active_tab" field.
  bool? _activeTab;
  bool get activeTab => _activeTab ?? false;
  set activeTab(bool? val) => _activeTab = val;

  bool hasActiveTab() => _activeTab != null;

  // "pending_tab" field.
  bool? _pendingTab;
  bool get pendingTab => _pendingTab ?? false;
  set pendingTab(bool? val) => _pendingTab = val;

  bool hasPendingTab() => _pendingTab != null;

  // "rejected_tab" field.
  bool? _rejectedTab;
  bool get rejectedTab => _rejectedTab ?? false;
  set rejectedTab(bool? val) => _rejectedTab = val;

  bool hasRejectedTab() => _rejectedTab != null;

  // "blocked_tab" field.
  bool? _blockedTab;
  bool get blockedTab => _blockedTab ?? false;
  set blockedTab(bool? val) => _blockedTab = val;

  bool hasBlockedTab() => _blockedTab != null;

  static OnTapHostDashboardStruct fromMap(Map<String, dynamic> data) =>
      OnTapHostDashboardStruct(
        activeTab: data['active_tab'] as bool?,
        pendingTab: data['pending_tab'] as bool?,
        rejectedTab: data['rejected_tab'] as bool?,
        blockedTab: data['blocked_tab'] as bool?,
      );

  static OnTapHostDashboardStruct? maybeFromMap(dynamic data) => data is Map
      ? OnTapHostDashboardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'active_tab': _activeTab,
        'pending_tab': _pendingTab,
        'rejected_tab': _rejectedTab,
        'blocked_tab': _blockedTab,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'active_tab': serializeParam(
          _activeTab,
          ParamType.bool,
        ),
        'pending_tab': serializeParam(
          _pendingTab,
          ParamType.bool,
        ),
        'rejected_tab': serializeParam(
          _rejectedTab,
          ParamType.bool,
        ),
        'blocked_tab': serializeParam(
          _blockedTab,
          ParamType.bool,
        ),
      }.withoutNulls;

  static OnTapHostDashboardStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OnTapHostDashboardStruct(
        activeTab: deserializeParam(
          data['active_tab'],
          ParamType.bool,
          false,
        ),
        pendingTab: deserializeParam(
          data['pending_tab'],
          ParamType.bool,
          false,
        ),
        rejectedTab: deserializeParam(
          data['rejected_tab'],
          ParamType.bool,
          false,
        ),
        blockedTab: deserializeParam(
          data['blocked_tab'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'OnTapHostDashboardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OnTapHostDashboardStruct &&
        activeTab == other.activeTab &&
        pendingTab == other.pendingTab &&
        rejectedTab == other.rejectedTab &&
        blockedTab == other.blockedTab;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([activeTab, pendingTab, rejectedTab, blockedTab]);
}

OnTapHostDashboardStruct createOnTapHostDashboardStruct({
  bool? activeTab,
  bool? pendingTab,
  bool? rejectedTab,
  bool? blockedTab,
}) =>
    OnTapHostDashboardStruct(
      activeTab: activeTab,
      pendingTab: pendingTab,
      rejectedTab: rejectedTab,
      blockedTab: blockedTab,
    );
