// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HostAddressDetailsStruct extends BaseStruct {
  HostAddressDetailsStruct({
    String? region,
    String? streetAddress,
    String? suiteApt,
    String? city,
    String? state,
    String? location,
    LatLng? propertyLatLng,
    String? zip,
    String? locality,
    String? landmark,
    String? plotNo,
    double? propertyPrice,
    String? propertyAvailableDate,
  })  : _region = region,
        _streetAddress = streetAddress,
        _suiteApt = suiteApt,
        _city = city,
        _state = state,
        _location = location,
        _propertyLatLng = propertyLatLng,
        _zip = zip,
        _locality = locality,
        _landmark = landmark,
        _plotNo = plotNo,
        _propertyPrice = propertyPrice,
        _propertyAvailableDate = propertyAvailableDate;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  set region(String? val) => _region = val;
  bool hasRegion() => _region != null;

  // "streetAddress" field.
  String? _streetAddress;
  String get streetAddress => _streetAddress ?? '';
  set streetAddress(String? val) => _streetAddress = val;
  bool hasStreetAddress() => _streetAddress != null;

  // "suiteApt" field.
  String? _suiteApt;
  String get suiteApt => _suiteApt ?? '';
  set suiteApt(String? val) => _suiteApt = val;
  bool hasSuiteApt() => _suiteApt != null;

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

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  // "property_lat_lng" field.
  LatLng? _propertyLatLng;
  LatLng? get propertyLatLng => _propertyLatLng;
  set propertyLatLng(LatLng? val) => _propertyLatLng = val;
  bool hasPropertyLatLng() => _propertyLatLng != null;

  // "zip" field.
  String? _zip;
  String get zip => _zip ?? '';
  set zip(String? val) => _zip = val;
  bool hasZip() => _zip != null;

  // "locality" field.
  String? _locality;
  String get locality => _locality ?? '';
  set locality(String? val) => _locality = val;
  bool hasLocality() => _locality != null;

  // "landmark" field.
  String? _landmark;
  String get landmark => _landmark ?? '';
  set landmark(String? val) => _landmark = val;
  bool hasLandmark() => _landmark != null;

  // "plotNo" field.
  String? _plotNo;
  String get plotNo => _plotNo ?? '';
  set plotNo(String? val) => _plotNo = val;
  bool hasPlotNo() => _plotNo != null;

  // "propertyPrice" field.
  double? _propertyPrice;
  double get propertyPrice => _propertyPrice ?? 0.0;
  set propertyPrice(double? val) => _propertyPrice = val;
  void incrementPropertyPrice(double amount) =>
      _propertyPrice = propertyPrice + amount;
  bool hasPropertyPrice() => _propertyPrice != null;

  // "propertyAvailableDate" field.
  String? _propertyAvailableDate;
  String get propertyAvailableDate => _propertyAvailableDate ?? '';
  set propertyAvailableDate(String? val) => _propertyAvailableDate = val;
  bool hasPropertyAvailableDate() => _propertyAvailableDate != null;

  static HostAddressDetailsStruct fromMap(Map<String, dynamic> data) =>
      HostAddressDetailsStruct(
        region: data['region'] as String?,
        streetAddress: data['streetAddress'] as String?,
        suiteApt: data['suiteApt'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        location: data['location'] as String?,
        propertyLatLng: data['property_lat_lng'] as LatLng?,
        zip: data['zip'] as String?,
        locality: data['locality'] as String?,
        landmark: data['landmark'] as String?,
        plotNo: data['plotNo'] as String?,
        propertyPrice: castToType<double>(data['propertyPrice']),
        propertyAvailableDate: data['propertyAvailableDate'] as String?,
      );

  static HostAddressDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? HostAddressDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'region': _region,
        'streetAddress': _streetAddress,
        'suiteApt': _suiteApt,
        'city': _city,
        'state': _state,
        'location': _location,
        'property_lat_lng': _propertyLatLng,
        'zip': _zip,
        'locality': _locality,
        'landmark': _landmark,
        'plotNo': _plotNo,
        'propertyPrice': _propertyPrice,
        'propertyAvailableDate': _propertyAvailableDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'region': serializeParam(
          _region,
          ParamType.String,
        ),
        'streetAddress': serializeParam(
          _streetAddress,
          ParamType.String,
        ),
        'suiteApt': serializeParam(
          _suiteApt,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'property_lat_lng': serializeParam(
          _propertyLatLng,
          ParamType.LatLng,
        ),
        'zip': serializeParam(
          _zip,
          ParamType.String,
        ),
        'locality': serializeParam(
          _locality,
          ParamType.String,
        ),
        'landmark': serializeParam(
          _landmark,
          ParamType.String,
        ),
        'plotNo': serializeParam(
          _plotNo,
          ParamType.String,
        ),
        'propertyPrice': serializeParam(
          _propertyPrice,
          ParamType.double,
        ),
        'propertyAvailableDate': serializeParam(
          _propertyAvailableDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static HostAddressDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HostAddressDetailsStruct(
        region: deserializeParam(
          data['region'],
          ParamType.String,
          false,
        ),
        streetAddress: deserializeParam(
          data['streetAddress'],
          ParamType.String,
          false,
        ),
        suiteApt: deserializeParam(
          data['suiteApt'],
          ParamType.String,
          false,
        ),
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
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        propertyLatLng: deserializeParam(
          data['property_lat_lng'],
          ParamType.LatLng,
          false,
        ),
        zip: deserializeParam(
          data['zip'],
          ParamType.String,
          false,
        ),
        locality: deserializeParam(
          data['locality'],
          ParamType.String,
          false,
        ),
        landmark: deserializeParam(
          data['landmark'],
          ParamType.String,
          false,
        ),
        plotNo: deserializeParam(
          data['plotNo'],
          ParamType.String,
          false,
        ),
        propertyPrice: deserializeParam(
          data['propertyPrice'],
          ParamType.double,
          false,
        ),
        propertyAvailableDate: deserializeParam(
          data['propertyAvailableDate'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HostAddressDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HostAddressDetailsStruct &&
        region == other.region &&
        streetAddress == other.streetAddress &&
        suiteApt == other.suiteApt &&
        city == other.city &&
        state == other.state &&
        location == other.location &&
        propertyLatLng == other.propertyLatLng &&
        zip == other.zip &&
        locality == other.locality &&
        landmark == other.landmark &&
        plotNo == other.plotNo &&
        propertyPrice == other.propertyPrice &&
        propertyAvailableDate == other.propertyAvailableDate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        region,
        streetAddress,
        suiteApt,
        city,
        state,
        location,
        propertyLatLng,
        zip,
        locality,
        landmark,
        plotNo,
        propertyPrice,
        propertyAvailableDate
      ]);
}

HostAddressDetailsStruct createHostAddressDetailsStruct({
  String? region,
  String? streetAddress,
  String? suiteApt,
  String? city,
  String? state,
  String? location,
  LatLng? propertyLatLng,
  String? zip,
  String? locality,
  String? landmark,
  String? plotNo,
  double? propertyPrice,
  String? propertyAvailableDate,
}) =>
    HostAddressDetailsStruct(
      region: region,
      streetAddress: streetAddress,
      suiteApt: suiteApt,
      city: city,
      state: state,
      location: location,
      propertyLatLng: propertyLatLng,
      zip: zip,
      locality: locality,
      landmark: landmark,
      plotNo: plotNo,
      propertyPrice: propertyPrice,
      propertyAvailableDate: propertyAvailableDate,
    );
