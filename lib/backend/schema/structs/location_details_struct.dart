// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationDetailsStruct extends BaseStruct {
  LocationDetailsStruct({
    String? city,
    String? state,
    String? country,
  })  : _city = city,
        _state = state,
        _country = country;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  static LocationDetailsStruct fromMap(Map<String, dynamic> data) =>
      LocationDetailsStruct(
        city: data['city'] as String?,
        state: data['state'] as String?,
        country: data['country'] as String?,
      );

  static LocationDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? LocationDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'city': _city,
        'state': _state,
        'country': _country,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
      }.withoutNulls;

  static LocationDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocationDetailsStruct(
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LocationDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocationDetailsStruct &&
        city == other.city &&
        state == other.state &&
        country == other.country;
  }

  @override
  int get hashCode => const ListEquality().hash([city, state, country]);
}

LocationDetailsStruct createLocationDetailsStruct({
  String? city,
  String? state,
  String? country,
}) =>
    LocationDetailsStruct(
      city: city,
      state: state,
      country: country,
    );
