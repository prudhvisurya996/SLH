// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyBookingDetailsStruct extends BaseStruct {
  PropertyBookingDetailsStruct({
    int? propertyId,
    String? propertyType,
    String? title,
    String? description,
    String? locality,
    String? city,
    String? streetAddress,
    String? landmark,
    String? state,
    String? country,
    String? zipcode,
    String? plotNo,
    DateTime? checkInDate,
    DateTime? checkOutDate,
    int? noOfGuests,
    int? noOfBedrooms,
    int? noOfBeds,
    int? noOfBathrooms,
    double? entirePropertyPricePerNight,
    double? roomPricePerNight,
    String? image,
    bool? isEntirePropertyBooking,
    int? daysBooking,
    double? totalPriceForEntireProperty,
    double? totalPriceForRoom,
    double? taxPriceForEntireProperty,
    double? taxPriceForRoom,
    double? calPriceForRoom,
    double? calPriceForEntireProperty,
    double? totalPriceIncludingTax,
    bool? isSharedAllowed,
    int? guestsPerRoom,
    int? sharedWashrooms,
    double? totalTax,
  })  : _propertyId = propertyId,
        _propertyType = propertyType,
        _title = title,
        _description = description,
        _locality = locality,
        _city = city,
        _streetAddress = streetAddress,
        _landmark = landmark,
        _state = state,
        _country = country,
        _zipcode = zipcode,
        _plotNo = plotNo,
        _checkInDate = checkInDate,
        _checkOutDate = checkOutDate,
        _noOfGuests = noOfGuests,
        _noOfBedrooms = noOfBedrooms,
        _noOfBeds = noOfBeds,
        _noOfBathrooms = noOfBathrooms,
        _entirePropertyPricePerNight = entirePropertyPricePerNight,
        _roomPricePerNight = roomPricePerNight,
        _image = image,
        _isEntirePropertyBooking = isEntirePropertyBooking,
        _daysBooking = daysBooking,
        _totalPriceForEntireProperty = totalPriceForEntireProperty,
        _totalPriceForRoom = totalPriceForRoom,
        _taxPriceForEntireProperty = taxPriceForEntireProperty,
        _taxPriceForRoom = taxPriceForRoom,
        _calPriceForRoom = calPriceForRoom,
        _calPriceForEntireProperty = calPriceForEntireProperty,
        _totalPriceIncludingTax = totalPriceIncludingTax,
        _isSharedAllowed = isSharedAllowed,
        _guestsPerRoom = guestsPerRoom,
        _sharedWashrooms = sharedWashrooms,
        _totalTax = totalTax;

  // "propertyId" field.
  int? _propertyId;
  int get propertyId => _propertyId ?? 0;
  set propertyId(int? val) => _propertyId = val;

  void incrementPropertyId(int amount) => propertyId = propertyId + amount;

  bool hasPropertyId() => _propertyId != null;

  // "propertyType" field.
  String? _propertyType;
  String get propertyType => _propertyType ?? '';
  set propertyType(String? val) => _propertyType = val;

  bool hasPropertyType() => _propertyType != null;

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

  // "zipcode" field.
  String? _zipcode;
  String get zipcode => _zipcode ?? '';
  set zipcode(String? val) => _zipcode = val;

  bool hasZipcode() => _zipcode != null;

  // "plotNo" field.
  String? _plotNo;
  String get plotNo => _plotNo ?? '';
  set plotNo(String? val) => _plotNo = val;

  bool hasPlotNo() => _plotNo != null;

  // "checkInDate" field.
  DateTime? _checkInDate;
  DateTime? get checkInDate => _checkInDate;
  set checkInDate(DateTime? val) => _checkInDate = val;

  bool hasCheckInDate() => _checkInDate != null;

  // "checkOutDate" field.
  DateTime? _checkOutDate;
  DateTime? get checkOutDate => _checkOutDate;
  set checkOutDate(DateTime? val) => _checkOutDate = val;

  bool hasCheckOutDate() => _checkOutDate != null;

  // "noOfGuests" field.
  int? _noOfGuests;
  int get noOfGuests => _noOfGuests ?? 0;
  set noOfGuests(int? val) => _noOfGuests = val;

  void incrementNoOfGuests(int amount) => noOfGuests = noOfGuests + amount;

  bool hasNoOfGuests() => _noOfGuests != null;

  // "noOfBedrooms" field.
  int? _noOfBedrooms;
  int get noOfBedrooms => _noOfBedrooms ?? 0;
  set noOfBedrooms(int? val) => _noOfBedrooms = val;

  void incrementNoOfBedrooms(int amount) =>
      noOfBedrooms = noOfBedrooms + amount;

  bool hasNoOfBedrooms() => _noOfBedrooms != null;

  // "noOfBeds" field.
  int? _noOfBeds;
  int get noOfBeds => _noOfBeds ?? 0;
  set noOfBeds(int? val) => _noOfBeds = val;

  void incrementNoOfBeds(int amount) => noOfBeds = noOfBeds + amount;

  bool hasNoOfBeds() => _noOfBeds != null;

  // "noOfBathrooms" field.
  int? _noOfBathrooms;
  int get noOfBathrooms => _noOfBathrooms ?? 0;
  set noOfBathrooms(int? val) => _noOfBathrooms = val;

  void incrementNoOfBathrooms(int amount) =>
      noOfBathrooms = noOfBathrooms + amount;

  bool hasNoOfBathrooms() => _noOfBathrooms != null;

  // "entirePropertyPricePerNight" field.
  double? _entirePropertyPricePerNight;
  double get entirePropertyPricePerNight => _entirePropertyPricePerNight ?? 0.0;
  set entirePropertyPricePerNight(double? val) =>
      _entirePropertyPricePerNight = val;

  void incrementEntirePropertyPricePerNight(double amount) =>
      entirePropertyPricePerNight = entirePropertyPricePerNight + amount;

  bool hasEntirePropertyPricePerNight() => _entirePropertyPricePerNight != null;

  // "roomPricePerNight" field.
  double? _roomPricePerNight;
  double get roomPricePerNight => _roomPricePerNight ?? 0.0;
  set roomPricePerNight(double? val) => _roomPricePerNight = val;

  void incrementRoomPricePerNight(double amount) =>
      roomPricePerNight = roomPricePerNight + amount;

  bool hasRoomPricePerNight() => _roomPricePerNight != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "isEntirePropertyBooking" field.
  bool? _isEntirePropertyBooking;
  bool get isEntirePropertyBooking => _isEntirePropertyBooking ?? false;
  set isEntirePropertyBooking(bool? val) => _isEntirePropertyBooking = val;

  bool hasIsEntirePropertyBooking() => _isEntirePropertyBooking != null;

  // "daysBooking" field.
  int? _daysBooking;
  int get daysBooking => _daysBooking ?? 0;
  set daysBooking(int? val) => _daysBooking = val;

  void incrementDaysBooking(int amount) => daysBooking = daysBooking + amount;

  bool hasDaysBooking() => _daysBooking != null;

  // "totalPriceForEntireProperty" field.
  double? _totalPriceForEntireProperty;
  double get totalPriceForEntireProperty => _totalPriceForEntireProperty ?? 0.0;
  set totalPriceForEntireProperty(double? val) =>
      _totalPriceForEntireProperty = val;

  void incrementTotalPriceForEntireProperty(double amount) =>
      totalPriceForEntireProperty = totalPriceForEntireProperty + amount;

  bool hasTotalPriceForEntireProperty() => _totalPriceForEntireProperty != null;

  // "totalPriceForRoom" field.
  double? _totalPriceForRoom;
  double get totalPriceForRoom => _totalPriceForRoom ?? 0.0;
  set totalPriceForRoom(double? val) => _totalPriceForRoom = val;

  void incrementTotalPriceForRoom(double amount) =>
      totalPriceForRoom = totalPriceForRoom + amount;

  bool hasTotalPriceForRoom() => _totalPriceForRoom != null;

  // "taxPriceForEntireProperty" field.
  double? _taxPriceForEntireProperty;
  double get taxPriceForEntireProperty => _taxPriceForEntireProperty ?? 0.0;
  set taxPriceForEntireProperty(double? val) =>
      _taxPriceForEntireProperty = val;

  void incrementTaxPriceForEntireProperty(double amount) =>
      taxPriceForEntireProperty = taxPriceForEntireProperty + amount;

  bool hasTaxPriceForEntireProperty() => _taxPriceForEntireProperty != null;

  // "taxPriceForRoom" field.
  double? _taxPriceForRoom;
  double get taxPriceForRoom => _taxPriceForRoom ?? 0.0;
  set taxPriceForRoom(double? val) => _taxPriceForRoom = val;

  void incrementTaxPriceForRoom(double amount) =>
      taxPriceForRoom = taxPriceForRoom + amount;

  bool hasTaxPriceForRoom() => _taxPriceForRoom != null;

  // "calPriceForRoom" field.
  double? _calPriceForRoom;
  double get calPriceForRoom => _calPriceForRoom ?? 0.0;
  set calPriceForRoom(double? val) => _calPriceForRoom = val;

  void incrementCalPriceForRoom(double amount) =>
      calPriceForRoom = calPriceForRoom + amount;

  bool hasCalPriceForRoom() => _calPriceForRoom != null;

  // "calPriceForEntireProperty" field.
  double? _calPriceForEntireProperty;
  double get calPriceForEntireProperty => _calPriceForEntireProperty ?? 0.0;
  set calPriceForEntireProperty(double? val) =>
      _calPriceForEntireProperty = val;

  void incrementCalPriceForEntireProperty(double amount) =>
      calPriceForEntireProperty = calPriceForEntireProperty + amount;

  bool hasCalPriceForEntireProperty() => _calPriceForEntireProperty != null;

  // "totalPriceIncludingTax" field.
  double? _totalPriceIncludingTax;
  double get totalPriceIncludingTax => _totalPriceIncludingTax ?? 0.0;
  set totalPriceIncludingTax(double? val) => _totalPriceIncludingTax = val;

  void incrementTotalPriceIncludingTax(double amount) =>
      totalPriceIncludingTax = totalPriceIncludingTax + amount;

  bool hasTotalPriceIncludingTax() => _totalPriceIncludingTax != null;

  // "isSharedAllowed" field.
  bool? _isSharedAllowed;
  bool get isSharedAllowed => _isSharedAllowed ?? false;
  set isSharedAllowed(bool? val) => _isSharedAllowed = val;

  bool hasIsSharedAllowed() => _isSharedAllowed != null;

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

  // "totalTax" field.
  double? _totalTax;
  double get totalTax => _totalTax ?? 0.0;
  set totalTax(double? val) => _totalTax = val;

  void incrementTotalTax(double amount) => totalTax = totalTax + amount;

  bool hasTotalTax() => _totalTax != null;

  static PropertyBookingDetailsStruct fromMap(Map<String, dynamic> data) =>
      PropertyBookingDetailsStruct(
        propertyId: castToType<int>(data['propertyId']),
        propertyType: data['propertyType'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        locality: data['locality'] as String?,
        city: data['city'] as String?,
        streetAddress: data['streetAddress'] as String?,
        landmark: data['landmark'] as String?,
        state: data['state'] as String?,
        country: data['country'] as String?,
        zipcode: data['zipcode'] as String?,
        plotNo: data['plotNo'] as String?,
        checkInDate: data['checkInDate'] as DateTime?,
        checkOutDate: data['checkOutDate'] as DateTime?,
        noOfGuests: castToType<int>(data['noOfGuests']),
        noOfBedrooms: castToType<int>(data['noOfBedrooms']),
        noOfBeds: castToType<int>(data['noOfBeds']),
        noOfBathrooms: castToType<int>(data['noOfBathrooms']),
        entirePropertyPricePerNight:
            castToType<double>(data['entirePropertyPricePerNight']),
        roomPricePerNight: castToType<double>(data['roomPricePerNight']),
        image: data['image'] as String?,
        isEntirePropertyBooking: data['isEntirePropertyBooking'] as bool?,
        daysBooking: castToType<int>(data['daysBooking']),
        totalPriceForEntireProperty:
            castToType<double>(data['totalPriceForEntireProperty']),
        totalPriceForRoom: castToType<double>(data['totalPriceForRoom']),
        taxPriceForEntireProperty:
            castToType<double>(data['taxPriceForEntireProperty']),
        taxPriceForRoom: castToType<double>(data['taxPriceForRoom']),
        calPriceForRoom: castToType<double>(data['calPriceForRoom']),
        calPriceForEntireProperty:
            castToType<double>(data['calPriceForEntireProperty']),
        totalPriceIncludingTax:
            castToType<double>(data['totalPriceIncludingTax']),
        isSharedAllowed: data['isSharedAllowed'] as bool?,
        guestsPerRoom: castToType<int>(data['guestsPerRoom']),
        sharedWashrooms: castToType<int>(data['sharedWashrooms']),
        totalTax: castToType<double>(data['totalTax']),
      );

  static PropertyBookingDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? PropertyBookingDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'propertyId': _propertyId,
        'propertyType': _propertyType,
        'title': _title,
        'description': _description,
        'locality': _locality,
        'city': _city,
        'streetAddress': _streetAddress,
        'landmark': _landmark,
        'state': _state,
        'country': _country,
        'zipcode': _zipcode,
        'plotNo': _plotNo,
        'checkInDate': _checkInDate,
        'checkOutDate': _checkOutDate,
        'noOfGuests': _noOfGuests,
        'noOfBedrooms': _noOfBedrooms,
        'noOfBeds': _noOfBeds,
        'noOfBathrooms': _noOfBathrooms,
        'entirePropertyPricePerNight': _entirePropertyPricePerNight,
        'roomPricePerNight': _roomPricePerNight,
        'image': _image,
        'isEntirePropertyBooking': _isEntirePropertyBooking,
        'daysBooking': _daysBooking,
        'totalPriceForEntireProperty': _totalPriceForEntireProperty,
        'totalPriceForRoom': _totalPriceForRoom,
        'taxPriceForEntireProperty': _taxPriceForEntireProperty,
        'taxPriceForRoom': _taxPriceForRoom,
        'calPriceForRoom': _calPriceForRoom,
        'calPriceForEntireProperty': _calPriceForEntireProperty,
        'totalPriceIncludingTax': _totalPriceIncludingTax,
        'isSharedAllowed': _isSharedAllowed,
        'guestsPerRoom': _guestsPerRoom,
        'sharedWashrooms': _sharedWashrooms,
        'totalTax': _totalTax,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'propertyId': serializeParam(
          _propertyId,
          ParamType.int,
        ),
        'propertyType': serializeParam(
          _propertyType,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
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
        'streetAddress': serializeParam(
          _streetAddress,
          ParamType.String,
        ),
        'landmark': serializeParam(
          _landmark,
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
        'zipcode': serializeParam(
          _zipcode,
          ParamType.String,
        ),
        'plotNo': serializeParam(
          _plotNo,
          ParamType.String,
        ),
        'checkInDate': serializeParam(
          _checkInDate,
          ParamType.DateTime,
        ),
        'checkOutDate': serializeParam(
          _checkOutDate,
          ParamType.DateTime,
        ),
        'noOfGuests': serializeParam(
          _noOfGuests,
          ParamType.int,
        ),
        'noOfBedrooms': serializeParam(
          _noOfBedrooms,
          ParamType.int,
        ),
        'noOfBeds': serializeParam(
          _noOfBeds,
          ParamType.int,
        ),
        'noOfBathrooms': serializeParam(
          _noOfBathrooms,
          ParamType.int,
        ),
        'entirePropertyPricePerNight': serializeParam(
          _entirePropertyPricePerNight,
          ParamType.double,
        ),
        'roomPricePerNight': serializeParam(
          _roomPricePerNight,
          ParamType.double,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'isEntirePropertyBooking': serializeParam(
          _isEntirePropertyBooking,
          ParamType.bool,
        ),
        'daysBooking': serializeParam(
          _daysBooking,
          ParamType.int,
        ),
        'totalPriceForEntireProperty': serializeParam(
          _totalPriceForEntireProperty,
          ParamType.double,
        ),
        'totalPriceForRoom': serializeParam(
          _totalPriceForRoom,
          ParamType.double,
        ),
        'taxPriceForEntireProperty': serializeParam(
          _taxPriceForEntireProperty,
          ParamType.double,
        ),
        'taxPriceForRoom': serializeParam(
          _taxPriceForRoom,
          ParamType.double,
        ),
        'calPriceForRoom': serializeParam(
          _calPriceForRoom,
          ParamType.double,
        ),
        'calPriceForEntireProperty': serializeParam(
          _calPriceForEntireProperty,
          ParamType.double,
        ),
        'totalPriceIncludingTax': serializeParam(
          _totalPriceIncludingTax,
          ParamType.double,
        ),
        'isSharedAllowed': serializeParam(
          _isSharedAllowed,
          ParamType.bool,
        ),
        'guestsPerRoom': serializeParam(
          _guestsPerRoom,
          ParamType.int,
        ),
        'sharedWashrooms': serializeParam(
          _sharedWashrooms,
          ParamType.int,
        ),
        'totalTax': serializeParam(
          _totalTax,
          ParamType.double,
        ),
      }.withoutNulls;

  static PropertyBookingDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PropertyBookingDetailsStruct(
        propertyId: deserializeParam(
          data['propertyId'],
          ParamType.int,
          false,
        ),
        propertyType: deserializeParam(
          data['propertyType'],
          ParamType.String,
          false,
        ),
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
        zipcode: deserializeParam(
          data['zipcode'],
          ParamType.String,
          false,
        ),
        plotNo: deserializeParam(
          data['plotNo'],
          ParamType.String,
          false,
        ),
        checkInDate: deserializeParam(
          data['checkInDate'],
          ParamType.DateTime,
          false,
        ),
        checkOutDate: deserializeParam(
          data['checkOutDate'],
          ParamType.DateTime,
          false,
        ),
        noOfGuests: deserializeParam(
          data['noOfGuests'],
          ParamType.int,
          false,
        ),
        noOfBedrooms: deserializeParam(
          data['noOfBedrooms'],
          ParamType.int,
          false,
        ),
        noOfBeds: deserializeParam(
          data['noOfBeds'],
          ParamType.int,
          false,
        ),
        noOfBathrooms: deserializeParam(
          data['noOfBathrooms'],
          ParamType.int,
          false,
        ),
        entirePropertyPricePerNight: deserializeParam(
          data['entirePropertyPricePerNight'],
          ParamType.double,
          false,
        ),
        roomPricePerNight: deserializeParam(
          data['roomPricePerNight'],
          ParamType.double,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        isEntirePropertyBooking: deserializeParam(
          data['isEntirePropertyBooking'],
          ParamType.bool,
          false,
        ),
        daysBooking: deserializeParam(
          data['daysBooking'],
          ParamType.int,
          false,
        ),
        totalPriceForEntireProperty: deserializeParam(
          data['totalPriceForEntireProperty'],
          ParamType.double,
          false,
        ),
        totalPriceForRoom: deserializeParam(
          data['totalPriceForRoom'],
          ParamType.double,
          false,
        ),
        taxPriceForEntireProperty: deserializeParam(
          data['taxPriceForEntireProperty'],
          ParamType.double,
          false,
        ),
        taxPriceForRoom: deserializeParam(
          data['taxPriceForRoom'],
          ParamType.double,
          false,
        ),
        calPriceForRoom: deserializeParam(
          data['calPriceForRoom'],
          ParamType.double,
          false,
        ),
        calPriceForEntireProperty: deserializeParam(
          data['calPriceForEntireProperty'],
          ParamType.double,
          false,
        ),
        totalPriceIncludingTax: deserializeParam(
          data['totalPriceIncludingTax'],
          ParamType.double,
          false,
        ),
        isSharedAllowed: deserializeParam(
          data['isSharedAllowed'],
          ParamType.bool,
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
        totalTax: deserializeParam(
          data['totalTax'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PropertyBookingDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PropertyBookingDetailsStruct &&
        propertyId == other.propertyId &&
        propertyType == other.propertyType &&
        title == other.title &&
        description == other.description &&
        locality == other.locality &&
        city == other.city &&
        streetAddress == other.streetAddress &&
        landmark == other.landmark &&
        state == other.state &&
        country == other.country &&
        zipcode == other.zipcode &&
        plotNo == other.plotNo &&
        checkInDate == other.checkInDate &&
        checkOutDate == other.checkOutDate &&
        noOfGuests == other.noOfGuests &&
        noOfBedrooms == other.noOfBedrooms &&
        noOfBeds == other.noOfBeds &&
        noOfBathrooms == other.noOfBathrooms &&
        entirePropertyPricePerNight == other.entirePropertyPricePerNight &&
        roomPricePerNight == other.roomPricePerNight &&
        image == other.image &&
        isEntirePropertyBooking == other.isEntirePropertyBooking &&
        daysBooking == other.daysBooking &&
        totalPriceForEntireProperty == other.totalPriceForEntireProperty &&
        totalPriceForRoom == other.totalPriceForRoom &&
        taxPriceForEntireProperty == other.taxPriceForEntireProperty &&
        taxPriceForRoom == other.taxPriceForRoom &&
        calPriceForRoom == other.calPriceForRoom &&
        calPriceForEntireProperty == other.calPriceForEntireProperty &&
        totalPriceIncludingTax == other.totalPriceIncludingTax &&
        isSharedAllowed == other.isSharedAllowed &&
        guestsPerRoom == other.guestsPerRoom &&
        sharedWashrooms == other.sharedWashrooms &&
        totalTax == other.totalTax;
  }

  @override
  int get hashCode => const ListEquality().hash([
        propertyId,
        propertyType,
        title,
        description,
        locality,
        city,
        streetAddress,
        landmark,
        state,
        country,
        zipcode,
        plotNo,
        checkInDate,
        checkOutDate,
        noOfGuests,
        noOfBedrooms,
        noOfBeds,
        noOfBathrooms,
        entirePropertyPricePerNight,
        roomPricePerNight,
        image,
        isEntirePropertyBooking,
        daysBooking,
        totalPriceForEntireProperty,
        totalPriceForRoom,
        taxPriceForEntireProperty,
        taxPriceForRoom,
        calPriceForRoom,
        calPriceForEntireProperty,
        totalPriceIncludingTax,
        isSharedAllowed,
        guestsPerRoom,
        sharedWashrooms,
        totalTax
      ]);
}

PropertyBookingDetailsStruct createPropertyBookingDetailsStruct({
  int? propertyId,
  String? propertyType,
  String? title,
  String? description,
  String? locality,
  String? city,
  String? streetAddress,
  String? landmark,
  String? state,
  String? country,
  String? zipcode,
  String? plotNo,
  DateTime? checkInDate,
  DateTime? checkOutDate,
  int? noOfGuests,
  int? noOfBedrooms,
  int? noOfBeds,
  int? noOfBathrooms,
  double? entirePropertyPricePerNight,
  double? roomPricePerNight,
  String? image,
  bool? isEntirePropertyBooking,
  int? daysBooking,
  double? totalPriceForEntireProperty,
  double? totalPriceForRoom,
  double? taxPriceForEntireProperty,
  double? taxPriceForRoom,
  double? calPriceForRoom,
  double? calPriceForEntireProperty,
  double? totalPriceIncludingTax,
  bool? isSharedAllowed,
  int? guestsPerRoom,
  int? sharedWashrooms,
  double? totalTax,
}) =>
    PropertyBookingDetailsStruct(
      propertyId: propertyId,
      propertyType: propertyType,
      title: title,
      description: description,
      locality: locality,
      city: city,
      streetAddress: streetAddress,
      landmark: landmark,
      state: state,
      country: country,
      zipcode: zipcode,
      plotNo: plotNo,
      checkInDate: checkInDate,
      checkOutDate: checkOutDate,
      noOfGuests: noOfGuests,
      noOfBedrooms: noOfBedrooms,
      noOfBeds: noOfBeds,
      noOfBathrooms: noOfBathrooms,
      entirePropertyPricePerNight: entirePropertyPricePerNight,
      roomPricePerNight: roomPricePerNight,
      image: image,
      isEntirePropertyBooking: isEntirePropertyBooking,
      daysBooking: daysBooking,
      totalPriceForEntireProperty: totalPriceForEntireProperty,
      totalPriceForRoom: totalPriceForRoom,
      taxPriceForEntireProperty: taxPriceForEntireProperty,
      taxPriceForRoom: taxPriceForRoom,
      calPriceForRoom: calPriceForRoom,
      calPriceForEntireProperty: calPriceForEntireProperty,
      totalPriceIncludingTax: totalPriceIncludingTax,
      isSharedAllowed: isSharedAllowed,
      guestsPerRoom: guestsPerRoom,
      sharedWashrooms: sharedWashrooms,
      totalTax: totalTax,
    );
