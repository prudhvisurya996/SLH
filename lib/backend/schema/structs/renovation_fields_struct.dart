// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RenovationFieldsStruct extends BaseStruct {
  RenovationFieldsStruct({
    bool? es1,
    bool? es2,
    bool? es3,
    bool? es4,
    bool? es5,
  })  : _es1 = es1,
        _es2 = es2,
        _es3 = es3,
        _es4 = es4,
        _es5 = es5;

  // "es1" field.
  bool? _es1;
  bool get es1 => _es1 ?? true;
  set es1(bool? val) => _es1 = val;
  bool hasEs1() => _es1 != null;

  // "es2" field.
  bool? _es2;
  bool get es2 => _es2 ?? true;
  set es2(bool? val) => _es2 = val;
  bool hasEs2() => _es2 != null;

  // "es3" field.
  bool? _es3;
  bool get es3 => _es3 ?? true;
  set es3(bool? val) => _es3 = val;
  bool hasEs3() => _es3 != null;

  // "es4" field.
  bool? _es4;
  bool get es4 => _es4 ?? true;
  set es4(bool? val) => _es4 = val;
  bool hasEs4() => _es4 != null;

  // "es5" field.
  bool? _es5;
  bool get es5 => _es5 ?? false;
  set es5(bool? val) => _es5 = val;
  bool hasEs5() => _es5 != null;

  static RenovationFieldsStruct fromMap(Map<String, dynamic> data) =>
      RenovationFieldsStruct(
        es1: data['es1'] as bool?,
        es2: data['es2'] as bool?,
        es3: data['es3'] as bool?,
        es4: data['es4'] as bool?,
        es5: data['es5'] as bool?,
      );

  static RenovationFieldsStruct? maybeFromMap(dynamic data) => data is Map
      ? RenovationFieldsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'es1': _es1,
        'es2': _es2,
        'es3': _es3,
        'es4': _es4,
        'es5': _es5,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'es1': serializeParam(
          _es1,
          ParamType.bool,
        ),
        'es2': serializeParam(
          _es2,
          ParamType.bool,
        ),
        'es3': serializeParam(
          _es3,
          ParamType.bool,
        ),
        'es4': serializeParam(
          _es4,
          ParamType.bool,
        ),
        'es5': serializeParam(
          _es5,
          ParamType.bool,
        ),
      }.withoutNulls;

  static RenovationFieldsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RenovationFieldsStruct(
        es1: deserializeParam(
          data['es1'],
          ParamType.bool,
          false,
        ),
        es2: deserializeParam(
          data['es2'],
          ParamType.bool,
          false,
        ),
        es3: deserializeParam(
          data['es3'],
          ParamType.bool,
          false,
        ),
        es4: deserializeParam(
          data['es4'],
          ParamType.bool,
          false,
        ),
        es5: deserializeParam(
          data['es5'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'RenovationFieldsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RenovationFieldsStruct &&
        es1 == other.es1 &&
        es2 == other.es2 &&
        es3 == other.es3 &&
        es4 == other.es4 &&
        es5 == other.es5;
  }

  @override
  int get hashCode => const ListEquality().hash([es1, es2, es3, es4, es5]);
}

RenovationFieldsStruct createRenovationFieldsStruct({
  bool? es1,
  bool? es2,
  bool? es3,
  bool? es4,
  bool? es5,
}) =>
    RenovationFieldsStruct(
      es1: es1,
      es2: es2,
      es3: es3,
      es4: es4,
      es5: es5,
    );
