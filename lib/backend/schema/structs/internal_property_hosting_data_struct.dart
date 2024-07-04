// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InternalPropertyHostingDataStruct extends BaseStruct {
  InternalPropertyHostingDataStruct({
    String? title,
    String? description,
    int? propertyTypeCatId,
    String? region,
    LatLng? propertyLatLng,
    String? suiteApt,
    String? location,
    String? zip,
    String? state,
    String? city,
    String? locality,
    String? streetAddress,
    String? flatNo,
    String? landmark,
    bool? isSharedBookingAllowed,
    int? noOfBedRooms,
    int? bedsPerRoom,
    int? bathroomsPerRoom,
    int? guestsPerRoom,
    int? sharedWashrooms,
    String? propertyAvailableFrom,
    double? roomPricePerNight,
  })  : _title = title,
        _description = description,
        _propertyTypeCatId = propertyTypeCatId,
        _region = region,
        _propertyLatLng = propertyLatLng,
        _suiteApt = suiteApt,
        _location = location,
        _zip = zip,
        _state = state,
        _city = city,
        _locality = locality,
        _streetAddress = streetAddress,
        _flatNo = flatNo,
        _landmark = landmark,
        _isSharedBookingAllowed = isSharedBookingAllowed,
        _noOfBedRooms = noOfBedRooms,
        _bedsPerRoom = bedsPerRoom,
        _bathroomsPerRoom = bathroomsPerRoom,
        _guestsPerRoom = guestsPerRoom,
        _sharedWashrooms = sharedWashrooms,
        _propertyAvailableFrom = propertyAvailableFrom,
        _roomPricePerNight = roomPricePerNight;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "propertyTypeCatId" field.
  int? _propertyTypeCatId;
  int get propertyTypeCatId => _propertyTypeCatId ?? 0;
  set propertyTypeCatId(int? val) => _propertyTypeCatId = val;

  void incrementPropertyTypeCatId(int amount) =>
      propertyTypeCatId = propertyTypeCatId + amount;

  bool hasPropertyTypeCatId() => _propertyTypeCatId != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  set region(String? val) => _region = val;

  bool hasRegion() => _region != null;

  // "property_lat_lng" field.
  LatLng? _propertyLatLng;
  LatLng? get propertyLatLng => _propertyLatLng;
  set propertyLatLng(LatLng? val) => _propertyLatLng = val;

  bool hasPropertyLatLng() => _propertyLatLng != null;

  // "suiteApt" field.
  String? _suiteApt;
  String get suiteApt => _suiteApt ?? '';
  set suiteApt(String? val) => _suiteApt = val;

  bool hasSuiteApt() => _suiteApt != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "zip" field.
  String? _zip;
  String get zip => _zip ?? '';
  set zip(String? val) => _zip = val;

  bool hasZip() => _zip != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "locality" field.
  String? _locality;
  String get locality => _locality ?? '';
  set locality(String? val) => _locality = val;

  bool hasLocality() => _locality != null;

  // "streetAddress" field.
  String? _streetAddress;
  String get streetAddress => _streetAddress ?? '';
  set streetAddress(String? val) => _streetAddress = val;

  bool hasStreetAddress() => _streetAddress != null;

  // "flatNo" field.
  String? _flatNo;
  String get flatNo => _flatNo ?? '';
  set flatNo(String? val) => _flatNo = val;

  bool hasFlatNo() => _flatNo != null;

  // "landmark" field.
  String? _landmark;
  String get landmark => _landmark ?? '';
  set landmark(String? val) => _landmark = val;

  bool hasLandmark() => _landmark != null;

  // "isSharedBookingAllowed" field.
  bool? _isSharedBookingAllowed;
  bool get isSharedBookingAllowed => _isSharedBookingAllowed ?? true;
  set isSharedBookingAllowed(bool? val) => _isSharedBookingAllowed = val;

  bool hasIsSharedBookingAllowed() => _isSharedBookingAllowed != null;

  // "noOfBedRooms" field.
  int? _noOfBedRooms;
  int get noOfBedRooms => _noOfBedRooms ?? 0;
  set noOfBedRooms(int? val) => _noOfBedRooms = val;

  void incrementNoOfBedRooms(int amount) =>
      noOfBedRooms = noOfBedRooms + amount;

  bool hasNoOfBedRooms() => _noOfBedRooms != null;

  // "bedsPerRoom" field.
  int? _bedsPerRoom;
  int get bedsPerRoom => _bedsPerRoom ?? 0;
  set bedsPerRoom(int? val) => _bedsPerRoom = val;

  void incrementBedsPerRoom(int amount) => bedsPerRoom = bedsPerRoom + amount;

  bool hasBedsPerRoom() => _bedsPerRoom != null;

  // "bathroomsPerRoom" field.
  int? _bathroomsPerRoom;
  int get bathroomsPerRoom => _bathroomsPerRoom ?? 0;
  set bathroomsPerRoom(int? val) => _bathroomsPerRoom = val;

  void incrementBathroomsPerRoom(int amount) =>
      bathroomsPerRoom = bathroomsPerRoom + amount;

  bool hasBathroomsPerRoom() => _bathroomsPerRoom != null;

  // "guestsPerRoom" field.
  int? _guestsPerRoom;
  int get guestsPerRoom => _guestsPerRoom ?? 0;
  set guestsPerRoom(int? val) => _guestsPerRoom = val;

  void incrementGuestsPerRoom(int amount) =>
      guestsPerRoom = guestsPerRoom + amount;

  bool hasGuestsPerRoom() => _guestsPerRoom != null;

  // "sharedWashrooms" field.
  int? _sharedWashrooms;
  int get sharedWashrooms => _sharedWashrooms ?? 0;
  set sharedWashrooms(int? val) => _sharedWashrooms = val;

  void incrementSharedWashrooms(int amount) =>
      sharedWashrooms = sharedWashrooms + amount;

  bool hasSharedWashrooms() => _sharedWashrooms != null;

  // "propertyAvailableFrom" field.
  String? _propertyAvailableFrom;
  String get propertyAvailableFrom => _propertyAvailableFrom ?? '';
  set propertyAvailableFrom(String? val) => _propertyAvailableFrom = val;

  bool hasPropertyAvailableFrom() => _propertyAvailableFrom != null;

  // "roomPricePerNight" field.
  double? _roomPricePerNight;
  double get roomPricePerNight => _roomPricePerNight ?? 0.0;
  set roomPricePerNight(double? val) => _roomPricePerNight = val;

  void incrementRoomPricePerNight(double amount) =>
      roomPricePerNight = roomPricePerNight + amount;

  bool hasRoomPricePerNight() => _roomPricePerNight != null;

  static InternalPropertyHostingDataStruct fromMap(Map<String, dynamic> data) =>
      InternalPropertyHostingDataStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        propertyTypeCatId: castToType<int>(data['propertyTypeCatId']),
        region: data['region'] as String?,
        propertyLatLng: data['property_lat_lng'] as LatLng?,
        suiteApt: data['suiteApt'] as String?,
        location: data['location'] as String?,
        zip: data['zip'] as String?,
        state: data['state'] as String?,
        city: data['city'] as String?,
        locality: data['locality'] as String?,
        streetAddress: data['streetAddress'] as String?,
        flatNo: data['flatNo'] as String?,
        landmark: data['landmark'] as String?,
        isSharedBookingAllowed: data['isSharedBookingAllowed'] as bool?,
        noOfBedRooms: castToType<int>(data['noOfBedRooms']),
        bedsPerRoom: castToType<int>(data['bedsPerRoom']),
        bathroomsPerRoom: castToType<int>(data['bathroomsPerRoom']),
        guestsPerRoom: castToType<int>(data['guestsPerRoom']),
        sharedWashrooms: castToType<int>(data['sharedWashrooms']),
        propertyAvailableFrom: data['propertyAvailableFrom'] as String?,
        roomPricePerNight: castToType<double>(data['roomPricePerNight']),
      );

  static InternalPropertyHostingDataStruct? maybeFromMap(dynamic data) => data
          is Map
      ? InternalPropertyHostingDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'propertyTypeCatId': _propertyTypeCatId,
        'region': _region,
        'property_lat_lng': _propertyLatLng,
        'suiteApt': _suiteApt,
        'location': _location,
        'zip': _zip,
        'state': _state,
        'city': _city,
        'locality': _locality,
        'streetAddress': _streetAddress,
        'flatNo': _flatNo,
        'landmark': _landmark,
        'isSharedBookingAllowed': _isSharedBookingAllowed,
        'noOfBedRooms': _noOfBedRooms,
        'bedsPerRoom': _bedsPerRoom,
        'bathroomsPerRoom': _bathroomsPerRoom,
        'guestsPerRoom': _guestsPerRoom,
        'sharedWashrooms': _sharedWashrooms,
        'propertyAvailableFrom': _propertyAvailableFrom,
        'roomPricePerNight': _roomPricePerNight,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'propertyTypeCatId': serializeParam(
          _propertyTypeCatId,
          ParamType.int,
        ),
        'region': serializeParam(
          _region,
          ParamType.String,
        ),
        'property_lat_lng': serializeParam(
          _propertyLatLng,
          ParamType.LatLng,
        ),
        'suiteApt': serializeParam(
          _suiteApt,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'zip': serializeParam(
          _zip,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'locality': serializeParam(
          _locality,
          ParamType.String,
        ),
        'streetAddress': serializeParam(
          _streetAddress,
          ParamType.String,
        ),
        'flatNo': serializeParam(
          _flatNo,
          ParamType.String,
        ),
        'landmark': serializeParam(
          _landmark,
          ParamType.String,
        ),
        'isSharedBookingAllowed': serializeParam(
          _isSharedBookingAllowed,
          ParamType.bool,
        ),
        'noOfBedRooms': serializeParam(
          _noOfBedRooms,
          ParamType.int,
        ),
        'bedsPerRoom': serializeParam(
          _bedsPerRoom,
          ParamType.int,
        ),
        'bathroomsPerRoom': serializeParam(
          _bathroomsPerRoom,
          ParamType.int,
        ),
        'guestsPerRoom': serializeParam(
          _guestsPerRoom,
          ParamType.int,
        ),
        'sharedWashrooms': serializeParam(
          _sharedWashrooms,
          ParamType.int,
        ),
        'propertyAvailableFrom': serializeParam(
          _propertyAvailableFrom,
          ParamType.String,
        ),
        'roomPricePerNight': serializeParam(
          _roomPricePerNight,
          ParamType.double,
        ),
      }.withoutNulls;

  static InternalPropertyHostingDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      InternalPropertyHostingDataStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        propertyTypeCatId: deserializeParam(
          data['propertyTypeCatId'],
          ParamType.int,
          false,
        ),
        region: deserializeParam(
          data['region'],
          ParamType.String,
          false,
        ),
        propertyLatLng: deserializeParam(
          data['property_lat_lng'],
          ParamType.LatLng,
          false,
        ),
        suiteApt: deserializeParam(
          data['suiteApt'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        zip: deserializeParam(
          data['zip'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        locality: deserializeParam(
          data['locality'],
          ParamType.String,
          false,
        ),
        streetAddress: deserializeParam(
          data['streetAddress'],
          ParamType.String,
          false,
        ),
        flatNo: deserializeParam(
          data['flatNo'],
          ParamType.String,
          false,
        ),
        landmark: deserializeParam(
          data['landmark'],
          ParamType.String,
          false,
        ),
        isSharedBookingAllowed: deserializeParam(
          data['isSharedBookingAllowed'],
          ParamType.bool,
          false,
        ),
        noOfBedRooms: deserializeParam(
          data['noOfBedRooms'],
          ParamType.int,
          false,
        ),
        bedsPerRoom: deserializeParam(
          data['bedsPerRoom'],
          ParamType.int,
          false,
        ),
        bathroomsPerRoom: deserializeParam(
          data['bathroomsPerRoom'],
          ParamType.int,
          false,
        ),
        guestsPerRoom: deserializeParam(
          data['guestsPerRoom'],
          ParamType.int,
          false,
        ),
        sharedWashrooms: deserializeParam(
          data['sharedWashrooms'],
          ParamType.int,
          false,
        ),
        propertyAvailableFrom: deserializeParam(
          data['propertyAvailableFrom'],
          ParamType.String,
          false,
        ),
        roomPricePerNight: deserializeParam(
          data['roomPricePerNight'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'InternalPropertyHostingDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InternalPropertyHostingDataStruct &&
        title == other.title &&
        description == other.description &&
        propertyTypeCatId == other.propertyTypeCatId &&
        region == other.region &&
        propertyLatLng == other.propertyLatLng &&
        suiteApt == other.suiteApt &&
        location == other.location &&
        zip == other.zip &&
        state == other.state &&
        city == other.city &&
        locality == other.locality &&
        streetAddress == other.streetAddress &&
        flatNo == other.flatNo &&
        landmark == other.landmark &&
        isSharedBookingAllowed == other.isSharedBookingAllowed &&
        noOfBedRooms == other.noOfBedRooms &&
        bedsPerRoom == other.bedsPerRoom &&
        bathroomsPerRoom == other.bathroomsPerRoom &&
        guestsPerRoom == other.guestsPerRoom &&
        sharedWashrooms == other.sharedWashrooms &&
        propertyAvailableFrom == other.propertyAvailableFrom &&
        roomPricePerNight == other.roomPricePerNight;
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        description,
        propertyTypeCatId,
        region,
        propertyLatLng,
        suiteApt,
        location,
        zip,
        state,
        city,
        locality,
        streetAddress,
        flatNo,
        landmark,
        isSharedBookingAllowed,
        noOfBedRooms,
        bedsPerRoom,
        bathroomsPerRoom,
        guestsPerRoom,
        sharedWashrooms,
        propertyAvailableFrom,
        roomPricePerNight
      ]);
}

InternalPropertyHostingDataStruct createInternalPropertyHostingDataStruct({
  String? title,
  String? description,
  int? propertyTypeCatId,
  String? region,
  LatLng? propertyLatLng,
  String? suiteApt,
  String? location,
  String? zip,
  String? state,
  String? city,
  String? locality,
  String? streetAddress,
  String? flatNo,
  String? landmark,
  bool? isSharedBookingAllowed,
  int? noOfBedRooms,
  int? bedsPerRoom,
  int? bathroomsPerRoom,
  int? guestsPerRoom,
  int? sharedWashrooms,
  String? propertyAvailableFrom,
  double? roomPricePerNight,
}) =>
    InternalPropertyHostingDataStruct(
      title: title,
      description: description,
      propertyTypeCatId: propertyTypeCatId,
      region: region,
      propertyLatLng: propertyLatLng,
      suiteApt: suiteApt,
      location: location,
      zip: zip,
      state: state,
      city: city,
      locality: locality,
      streetAddress: streetAddress,
      flatNo: flatNo,
      landmark: landmark,
      isSharedBookingAllowed: isSharedBookingAllowed,
      noOfBedRooms: noOfBedRooms,
      bedsPerRoom: bedsPerRoom,
      bathroomsPerRoom: bathroomsPerRoom,
      guestsPerRoom: guestsPerRoom,
      sharedWashrooms: sharedWashrooms,
      propertyAvailableFrom: propertyAvailableFrom,
      roomPricePerNight: roomPricePerNight,
    );
