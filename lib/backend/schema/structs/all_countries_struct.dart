// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllCountriesStruct extends BaseStruct {
  AllCountriesStruct({
    String? name,
    String? alpha2,
    String? alpha3,
    String? countryCode,
    String? iso31662,
    String? region,
    String? subRegion,
    String? intermediateRegion,
    String? regionCode,
    String? subRegionCode,
    String? intermediateRegionCode,
  })  : _name = name,
        _alpha2 = alpha2,
        _alpha3 = alpha3,
        _countryCode = countryCode,
        _iso31662 = iso31662,
        _region = region,
        _subRegion = subRegion,
        _intermediateRegion = intermediateRegion,
        _regionCode = regionCode,
        _subRegionCode = subRegionCode,
        _intermediateRegionCode = intermediateRegionCode;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "alpha-2" field.
  String? _alpha2;
  String get alpha2 => _alpha2 ?? '';
  set alpha2(String? val) => _alpha2 = val;

  bool hasAlpha2() => _alpha2 != null;

  // "alpha-3" field.
  String? _alpha3;
  String get alpha3 => _alpha3 ?? '';
  set alpha3(String? val) => _alpha3 = val;

  bool hasAlpha3() => _alpha3 != null;

  // "country-code" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;

  bool hasCountryCode() => _countryCode != null;

  // "iso_3166-2" field.
  String? _iso31662;
  String get iso31662 => _iso31662 ?? '';
  set iso31662(String? val) => _iso31662 = val;

  bool hasIso31662() => _iso31662 != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  set region(String? val) => _region = val;

  bool hasRegion() => _region != null;

  // "sub-region" field.
  String? _subRegion;
  String get subRegion => _subRegion ?? '';
  set subRegion(String? val) => _subRegion = val;

  bool hasSubRegion() => _subRegion != null;

  // "intermediate-region" field.
  String? _intermediateRegion;
  String get intermediateRegion => _intermediateRegion ?? '';
  set intermediateRegion(String? val) => _intermediateRegion = val;

  bool hasIntermediateRegion() => _intermediateRegion != null;

  // "region-code" field.
  String? _regionCode;
  String get regionCode => _regionCode ?? '';
  set regionCode(String? val) => _regionCode = val;

  bool hasRegionCode() => _regionCode != null;

  // "sub-region-code" field.
  String? _subRegionCode;
  String get subRegionCode => _subRegionCode ?? '';
  set subRegionCode(String? val) => _subRegionCode = val;

  bool hasSubRegionCode() => _subRegionCode != null;

  // "intermediate-region-code" field.
  String? _intermediateRegionCode;
  String get intermediateRegionCode => _intermediateRegionCode ?? '';
  set intermediateRegionCode(String? val) => _intermediateRegionCode = val;

  bool hasIntermediateRegionCode() => _intermediateRegionCode != null;

  static AllCountriesStruct fromMap(Map<String, dynamic> data) =>
      AllCountriesStruct(
        name: data['name'] as String?,
        alpha2: data['alpha-2'] as String?,
        alpha3: data['alpha-3'] as String?,
        countryCode: data['country-code'] as String?,
        iso31662: data['iso_3166-2'] as String?,
        region: data['region'] as String?,
        subRegion: data['sub-region'] as String?,
        intermediateRegion: data['intermediate-region'] as String?,
        regionCode: data['region-code'] as String?,
        subRegionCode: data['sub-region-code'] as String?,
        intermediateRegionCode: data['intermediate-region-code'] as String?,
      );

  static AllCountriesStruct? maybeFromMap(dynamic data) => data is Map
      ? AllCountriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'alpha-2': _alpha2,
        'alpha-3': _alpha3,
        'country-code': _countryCode,
        'iso_3166-2': _iso31662,
        'region': _region,
        'sub-region': _subRegion,
        'intermediate-region': _intermediateRegion,
        'region-code': _regionCode,
        'sub-region-code': _subRegionCode,
        'intermediate-region-code': _intermediateRegionCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'alpha-2': serializeParam(
          _alpha2,
          ParamType.String,
        ),
        'alpha-3': serializeParam(
          _alpha3,
          ParamType.String,
        ),
        'country-code': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'iso_3166-2': serializeParam(
          _iso31662,
          ParamType.String,
        ),
        'region': serializeParam(
          _region,
          ParamType.String,
        ),
        'sub-region': serializeParam(
          _subRegion,
          ParamType.String,
        ),
        'intermediate-region': serializeParam(
          _intermediateRegion,
          ParamType.String,
        ),
        'region-code': serializeParam(
          _regionCode,
          ParamType.String,
        ),
        'sub-region-code': serializeParam(
          _subRegionCode,
          ParamType.String,
        ),
        'intermediate-region-code': serializeParam(
          _intermediateRegionCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static AllCountriesStruct fromSerializableMap(Map<String, dynamic> data) =>
      AllCountriesStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        alpha2: deserializeParam(
          data['alpha-2'],
          ParamType.String,
          false,
        ),
        alpha3: deserializeParam(
          data['alpha-3'],
          ParamType.String,
          false,
        ),
        countryCode: deserializeParam(
          data['country-code'],
          ParamType.String,
          false,
        ),
        iso31662: deserializeParam(
          data['iso_3166-2'],
          ParamType.String,
          false,
        ),
        region: deserializeParam(
          data['region'],
          ParamType.String,
          false,
        ),
        subRegion: deserializeParam(
          data['sub-region'],
          ParamType.String,
          false,
        ),
        intermediateRegion: deserializeParam(
          data['intermediate-region'],
          ParamType.String,
          false,
        ),
        regionCode: deserializeParam(
          data['region-code'],
          ParamType.String,
          false,
        ),
        subRegionCode: deserializeParam(
          data['sub-region-code'],
          ParamType.String,
          false,
        ),
        intermediateRegionCode: deserializeParam(
          data['intermediate-region-code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AllCountriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AllCountriesStruct &&
        name == other.name &&
        alpha2 == other.alpha2 &&
        alpha3 == other.alpha3 &&
        countryCode == other.countryCode &&
        iso31662 == other.iso31662 &&
        region == other.region &&
        subRegion == other.subRegion &&
        intermediateRegion == other.intermediateRegion &&
        regionCode == other.regionCode &&
        subRegionCode == other.subRegionCode &&
        intermediateRegionCode == other.intermediateRegionCode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        alpha2,
        alpha3,
        countryCode,
        iso31662,
        region,
        subRegion,
        intermediateRegion,
        regionCode,
        subRegionCode,
        intermediateRegionCode
      ]);
}

AllCountriesStruct createAllCountriesStruct({
  String? name,
  String? alpha2,
  String? alpha3,
  String? countryCode,
  String? iso31662,
  String? region,
  String? subRegion,
  String? intermediateRegion,
  String? regionCode,
  String? subRegionCode,
  String? intermediateRegionCode,
}) =>
    AllCountriesStruct(
      name: name,
      alpha2: alpha2,
      alpha3: alpha3,
      countryCode: countryCode,
      iso31662: iso31662,
      region: region,
      subRegion: subRegion,
      intermediateRegion: intermediateRegion,
      regionCode: regionCode,
      subRegionCode: subRegionCode,
      intermediateRegionCode: intermediateRegionCode,
    );
