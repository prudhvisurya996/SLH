// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExHostJourneyStruct extends BaseStruct {
  ExHostJourneyStruct({
    String? propertyTitle,
    String? availableFrom,
    String? availableTo,
    String? description,
    String? flatNo,
    String? streetAddress,
    String? landmark,
    String? locality,
    String? city,
    String? state,
    String? country,
    String? pincode,
    double? pricepermonth,
  })  : _propertyTitle = propertyTitle,
        _availableFrom = availableFrom,
        _availableTo = availableTo,
        _description = description,
        _flatNo = flatNo,
        _streetAddress = streetAddress,
        _landmark = landmark,
        _locality = locality,
        _city = city,
        _state = state,
        _country = country,
        _pincode = pincode,
        _pricepermonth = pricepermonth;

  // "propertyTitle" field.
  String? _propertyTitle;
  String get propertyTitle => _propertyTitle ?? '';
  set propertyTitle(String? val) => _propertyTitle = val;

  bool hasPropertyTitle() => _propertyTitle != null;

  // "availableFrom" field.
  String? _availableFrom;
  String get availableFrom => _availableFrom ?? '';
  set availableFrom(String? val) => _availableFrom = val;

  bool hasAvailableFrom() => _availableFrom != null;

  // "availableTo" field.
  String? _availableTo;
  String get availableTo => _availableTo ?? '';
  set availableTo(String? val) => _availableTo = val;

  bool hasAvailableTo() => _availableTo != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "flatNo" field.
  String? _flatNo;
  String get flatNo => _flatNo ?? '';
  set flatNo(String? val) => _flatNo = val;

  bool hasFlatNo() => _flatNo != null;

  // "streetAddress" field.
  String? _streetAddress;
  String get streetAddress => _streetAddress ?? '';
  set streetAddress(String? val) => _streetAddress = val;

  bool hasStreetAddress() => _streetAddress != null;

  // "landmark" field.
  String? _landmark;
  String get landmark => _landmark ?? '';
  set landmark(String? val) => _landmark = val;

  bool hasLandmark() => _landmark != null;

  // "locality" field.
  String? _locality;
  String get locality => _locality ?? '';
  set locality(String? val) => _locality = val;

  bool hasLocality() => _locality != null;

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

  // "pincode" field.
  String? _pincode;
  String get pincode => _pincode ?? '';
  set pincode(String? val) => _pincode = val;

  bool hasPincode() => _pincode != null;

  // "pricepermonth" field.
  double? _pricepermonth;
  double get pricepermonth => _pricepermonth ?? 0.0;
  set pricepermonth(double? val) => _pricepermonth = val;

  void incrementPricepermonth(double amount) =>
      pricepermonth = pricepermonth + amount;

  bool hasPricepermonth() => _pricepermonth != null;

  static ExHostJourneyStruct fromMap(Map<String, dynamic> data) =>
      ExHostJourneyStruct(
        propertyTitle: data['propertyTitle'] as String?,
        availableFrom: data['availableFrom'] as String?,
        availableTo: data['availableTo'] as String?,
        description: data['description'] as String?,
        flatNo: data['flatNo'] as String?,
        streetAddress: data['streetAddress'] as String?,
        landmark: data['landmark'] as String?,
        locality: data['locality'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        country: data['country'] as String?,
        pincode: data['pincode'] as String?,
        pricepermonth: castToType<double>(data['pricepermonth']),
      );

  static ExHostJourneyStruct? maybeFromMap(dynamic data) => data is Map
      ? ExHostJourneyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'propertyTitle': _propertyTitle,
        'availableFrom': _availableFrom,
        'availableTo': _availableTo,
        'description': _description,
        'flatNo': _flatNo,
        'streetAddress': _streetAddress,
        'landmark': _landmark,
        'locality': _locality,
        'city': _city,
        'state': _state,
        'country': _country,
        'pincode': _pincode,
        'pricepermonth': _pricepermonth,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'propertyTitle': serializeParam(
          _propertyTitle,
          ParamType.String,
        ),
        'availableFrom': serializeParam(
          _availableFrom,
          ParamType.String,
        ),
        'availableTo': serializeParam(
          _availableTo,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'flatNo': serializeParam(
          _flatNo,
          ParamType.String,
        ),
        'streetAddress': serializeParam(
          _streetAddress,
          ParamType.String,
        ),
        'landmark': serializeParam(
          _landmark,
          ParamType.String,
        ),
        'locality': serializeParam(
          _locality,
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
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'pincode': serializeParam(
          _pincode,
          ParamType.String,
        ),
        'pricepermonth': serializeParam(
          _pricepermonth,
          ParamType.double,
        ),
      }.withoutNulls;

  static ExHostJourneyStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExHostJourneyStruct(
        propertyTitle: deserializeParam(
          data['propertyTitle'],
          ParamType.String,
          false,
        ),
        availableFrom: deserializeParam(
          data['availableFrom'],
          ParamType.String,
          false,
        ),
        availableTo: deserializeParam(
          data['availableTo'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        flatNo: deserializeParam(
          data['flatNo'],
          ParamType.String,
          false,
        ),
        streetAddress: deserializeParam(
          data['streetAddress'],
          ParamType.String,
          false,
        ),
        landmark: deserializeParam(
          data['landmark'],
          ParamType.String,
          false,
        ),
        locality: deserializeParam(
          data['locality'],
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
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        pincode: deserializeParam(
          data['pincode'],
          ParamType.String,
          false,
        ),
        pricepermonth: deserializeParam(
          data['pricepermonth'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ExHostJourneyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExHostJourneyStruct &&
        propertyTitle == other.propertyTitle &&
        availableFrom == other.availableFrom &&
        availableTo == other.availableTo &&
        description == other.description &&
        flatNo == other.flatNo &&
        streetAddress == other.streetAddress &&
        landmark == other.landmark &&
        locality == other.locality &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        pincode == other.pincode &&
        pricepermonth == other.pricepermonth;
  }

  @override
  int get hashCode => const ListEquality().hash([
        propertyTitle,
        availableFrom,
        availableTo,
        description,
        flatNo,
        streetAddress,
        landmark,
        locality,
        city,
        state,
        country,
        pincode,
        pricepermonth
      ]);
}

ExHostJourneyStruct createExHostJourneyStruct({
  String? propertyTitle,
  String? availableFrom,
  String? availableTo,
  String? description,
  String? flatNo,
  String? streetAddress,
  String? landmark,
  String? locality,
  String? city,
  String? state,
  String? country,
  String? pincode,
  double? pricepermonth,
}) =>
    ExHostJourneyStruct(
      propertyTitle: propertyTitle,
      availableFrom: availableFrom,
      availableTo: availableTo,
      description: description,
      flatNo: flatNo,
      streetAddress: streetAddress,
      landmark: landmark,
      locality: locality,
      city: city,
      state: state,
      country: country,
      pincode: pincode,
      pricepermonth: pricepermonth,
    );
