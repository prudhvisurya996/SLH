// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AtDynamicFieldsDataStruct extends BaseStruct {
  AtDynamicFieldsDataStruct({
    List<String>? spatialLayout,
  }) : _spatialLayout = spatialLayout;

  // "spatialLayout" field.
  List<String>? _spatialLayout;
  List<String> get spatialLayout => _spatialLayout ?? const [];
  set spatialLayout(List<String>? val) => _spatialLayout = val;

  void updateSpatialLayout(Function(List<String>) updateFn) {
    updateFn(_spatialLayout ??= []);
  }

  bool hasSpatialLayout() => _spatialLayout != null;

  static AtDynamicFieldsDataStruct fromMap(Map<String, dynamic> data) =>
      AtDynamicFieldsDataStruct(
        spatialLayout: getDataList(data['spatialLayout']),
      );

  static AtDynamicFieldsDataStruct? maybeFromMap(dynamic data) => data is Map
      ? AtDynamicFieldsDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'spatialLayout': _spatialLayout,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'spatialLayout': serializeParam(
          _spatialLayout,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static AtDynamicFieldsDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AtDynamicFieldsDataStruct(
        spatialLayout: deserializeParam<String>(
          data['spatialLayout'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'AtDynamicFieldsDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AtDynamicFieldsDataStruct &&
        listEquality.equals(spatialLayout, other.spatialLayout);
  }

  @override
  int get hashCode => const ListEquality().hash([spatialLayout]);
}

AtDynamicFieldsDataStruct createAtDynamicFieldsDataStruct() =>
    AtDynamicFieldsDataStruct();
