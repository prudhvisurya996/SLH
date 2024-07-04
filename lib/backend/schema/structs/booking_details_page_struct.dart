// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingDetailsPageStruct extends BaseStruct {
  BookingDetailsPageStruct({
    int? taxPercent,
    String? title,
    String? locality,
    String? city,
    int? guestCount,
    String? availableFromDate,
    String? bookedDates,
    String? propTypes,
    int? bedCount,
    int? bedRoomCount,
    int? bathRoomCount,
    String? articleId,
    int? propId,
    double? totalPrice,
    double? pricePerRoom,
    int? guestsPerRoom,
    String? partialBookedDates,
    bool? sharedBookingAllowed,
    int? partiallyAvailableRooms,
    String? image,
    String? addressDetails,
  })  : _taxPercent = taxPercent,
        _title = title,
        _locality = locality,
        _city = city,
        _guestCount = guestCount,
        _availableFromDate = availableFromDate,
        _bookedDates = bookedDates,
        _propTypes = propTypes,
        _bedCount = bedCount,
        _bedRoomCount = bedRoomCount,
        _bathRoomCount = bathRoomCount,
        _articleId = articleId,
        _propId = propId,
        _totalPrice = totalPrice,
        _pricePerRoom = pricePerRoom,
        _guestsPerRoom = guestsPerRoom,
        _partialBookedDates = partialBookedDates,
        _sharedBookingAllowed = sharedBookingAllowed,
        _partiallyAvailableRooms = partiallyAvailableRooms,
        _image = image,
        _addressDetails = addressDetails;

  // "taxPercent" field.
  int? _taxPercent;
  int get taxPercent => _taxPercent ?? 0;
  set taxPercent(int? val) => _taxPercent = val;

  void incrementTaxPercent(int amount) => taxPercent = taxPercent + amount;

  bool hasTaxPercent() => _taxPercent != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

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

  // "guestCount" field.
  int? _guestCount;
  int get guestCount => _guestCount ?? 0;
  set guestCount(int? val) => _guestCount = val;

  void incrementGuestCount(int amount) => guestCount = guestCount + amount;

  bool hasGuestCount() => _guestCount != null;

  // "availableFromDate" field.
  String? _availableFromDate;
  String get availableFromDate => _availableFromDate ?? '';
  set availableFromDate(String? val) => _availableFromDate = val;

  bool hasAvailableFromDate() => _availableFromDate != null;

  // "bookedDates" field.
  String? _bookedDates;
  String get bookedDates => _bookedDates ?? '';
  set bookedDates(String? val) => _bookedDates = val;

  bool hasBookedDates() => _bookedDates != null;

  // "propTypes" field.
  String? _propTypes;
  String get propTypes => _propTypes ?? '';
  set propTypes(String? val) => _propTypes = val;

  bool hasPropTypes() => _propTypes != null;

  // "bedCount" field.
  int? _bedCount;
  int get bedCount => _bedCount ?? 0;
  set bedCount(int? val) => _bedCount = val;

  void incrementBedCount(int amount) => bedCount = bedCount + amount;

  bool hasBedCount() => _bedCount != null;

  // "bedRoomCount" field.
  int? _bedRoomCount;
  int get bedRoomCount => _bedRoomCount ?? 0;
  set bedRoomCount(int? val) => _bedRoomCount = val;

  void incrementBedRoomCount(int amount) =>
      bedRoomCount = bedRoomCount + amount;

  bool hasBedRoomCount() => _bedRoomCount != null;

  // "bathRoomCount" field.
  int? _bathRoomCount;
  int get bathRoomCount => _bathRoomCount ?? 0;
  set bathRoomCount(int? val) => _bathRoomCount = val;

  void incrementBathRoomCount(int amount) =>
      bathRoomCount = bathRoomCount + amount;

  bool hasBathRoomCount() => _bathRoomCount != null;

  // "articleId" field.
  String? _articleId;
  String get articleId => _articleId ?? '';
  set articleId(String? val) => _articleId = val;

  bool hasArticleId() => _articleId != null;

  // "propId" field.
  int? _propId;
  int get propId => _propId ?? 0;
  set propId(int? val) => _propId = val;

  void incrementPropId(int amount) => propId = propId + amount;

  bool hasPropId() => _propId != null;

  // "totalPrice" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  set totalPrice(double? val) => _totalPrice = val;

  void incrementTotalPrice(double amount) => totalPrice = totalPrice + amount;

  bool hasTotalPrice() => _totalPrice != null;

  // "pricePerRoom" field.
  double? _pricePerRoom;
  double get pricePerRoom => _pricePerRoom ?? 0.0;
  set pricePerRoom(double? val) => _pricePerRoom = val;

  void incrementPricePerRoom(double amount) =>
      pricePerRoom = pricePerRoom + amount;

  bool hasPricePerRoom() => _pricePerRoom != null;

  // "guestsPerRoom" field.
  int? _guestsPerRoom;
  int get guestsPerRoom => _guestsPerRoom ?? 0;
  set guestsPerRoom(int? val) => _guestsPerRoom = val;

  void incrementGuestsPerRoom(int amount) =>
      guestsPerRoom = guestsPerRoom + amount;

  bool hasGuestsPerRoom() => _guestsPerRoom != null;

  // "partialBookedDates" field.
  String? _partialBookedDates;
  String get partialBookedDates => _partialBookedDates ?? '';
  set partialBookedDates(String? val) => _partialBookedDates = val;

  bool hasPartialBookedDates() => _partialBookedDates != null;

  // "sharedBookingAllowed" field.
  bool? _sharedBookingAllowed;
  bool get sharedBookingAllowed => _sharedBookingAllowed ?? false;
  set sharedBookingAllowed(bool? val) => _sharedBookingAllowed = val;

  bool hasSharedBookingAllowed() => _sharedBookingAllowed != null;

  // "partiallyAvailableRooms" field.
  int? _partiallyAvailableRooms;
  int get partiallyAvailableRooms => _partiallyAvailableRooms ?? 0;
  set partiallyAvailableRooms(int? val) => _partiallyAvailableRooms = val;

  void incrementPartiallyAvailableRooms(int amount) =>
      partiallyAvailableRooms = partiallyAvailableRooms + amount;

  bool hasPartiallyAvailableRooms() => _partiallyAvailableRooms != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "addressDetails" field.
  String? _addressDetails;
  String get addressDetails => _addressDetails ?? '';
  set addressDetails(String? val) => _addressDetails = val;

  bool hasAddressDetails() => _addressDetails != null;

  static BookingDetailsPageStruct fromMap(Map<String, dynamic> data) =>
      BookingDetailsPageStruct(
        taxPercent: castToType<int>(data['taxPercent']),
        title: data['title'] as String?,
        locality: data['locality'] as String?,
        city: data['city'] as String?,
        guestCount: castToType<int>(data['guestCount']),
        availableFromDate: data['availableFromDate'] as String?,
        bookedDates: data['bookedDates'] as String?,
        propTypes: data['propTypes'] as String?,
        bedCount: castToType<int>(data['bedCount']),
        bedRoomCount: castToType<int>(data['bedRoomCount']),
        bathRoomCount: castToType<int>(data['bathRoomCount']),
        articleId: data['articleId'] as String?,
        propId: castToType<int>(data['propId']),
        totalPrice: castToType<double>(data['totalPrice']),
        pricePerRoom: castToType<double>(data['pricePerRoom']),
        guestsPerRoom: castToType<int>(data['guestsPerRoom']),
        partialBookedDates: data['partialBookedDates'] as String?,
        sharedBookingAllowed: data['sharedBookingAllowed'] as bool?,
        partiallyAvailableRooms:
            castToType<int>(data['partiallyAvailableRooms']),
        image: data['image'] as String?,
        addressDetails: data['addressDetails'] as String?,
      );

  static BookingDetailsPageStruct? maybeFromMap(dynamic data) => data is Map
      ? BookingDetailsPageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'taxPercent': _taxPercent,
        'title': _title,
        'locality': _locality,
        'city': _city,
        'guestCount': _guestCount,
        'availableFromDate': _availableFromDate,
        'bookedDates': _bookedDates,
        'propTypes': _propTypes,
        'bedCount': _bedCount,
        'bedRoomCount': _bedRoomCount,
        'bathRoomCount': _bathRoomCount,
        'articleId': _articleId,
        'propId': _propId,
        'totalPrice': _totalPrice,
        'pricePerRoom': _pricePerRoom,
        'guestsPerRoom': _guestsPerRoom,
        'partialBookedDates': _partialBookedDates,
        'sharedBookingAllowed': _sharedBookingAllowed,
        'partiallyAvailableRooms': _partiallyAvailableRooms,
        'image': _image,
        'addressDetails': _addressDetails,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'taxPercent': serializeParam(
          _taxPercent,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
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
        'guestCount': serializeParam(
          _guestCount,
          ParamType.int,
        ),
        'availableFromDate': serializeParam(
          _availableFromDate,
          ParamType.String,
        ),
        'bookedDates': serializeParam(
          _bookedDates,
          ParamType.String,
        ),
        'propTypes': serializeParam(
          _propTypes,
          ParamType.String,
        ),
        'bedCount': serializeParam(
          _bedCount,
          ParamType.int,
        ),
        'bedRoomCount': serializeParam(
          _bedRoomCount,
          ParamType.int,
        ),
        'bathRoomCount': serializeParam(
          _bathRoomCount,
          ParamType.int,
        ),
        'articleId': serializeParam(
          _articleId,
          ParamType.String,
        ),
        'propId': serializeParam(
          _propId,
          ParamType.int,
        ),
        'totalPrice': serializeParam(
          _totalPrice,
          ParamType.double,
        ),
        'pricePerRoom': serializeParam(
          _pricePerRoom,
          ParamType.double,
        ),
        'guestsPerRoom': serializeParam(
          _guestsPerRoom,
          ParamType.int,
        ),
        'partialBookedDates': serializeParam(
          _partialBookedDates,
          ParamType.String,
        ),
        'sharedBookingAllowed': serializeParam(
          _sharedBookingAllowed,
          ParamType.bool,
        ),
        'partiallyAvailableRooms': serializeParam(
          _partiallyAvailableRooms,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'addressDetails': serializeParam(
          _addressDetails,
          ParamType.String,
        ),
      }.withoutNulls;

  static BookingDetailsPageStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BookingDetailsPageStruct(
        taxPercent: deserializeParam(
          data['taxPercent'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
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
        guestCount: deserializeParam(
          data['guestCount'],
          ParamType.int,
          false,
        ),
        availableFromDate: deserializeParam(
          data['availableFromDate'],
          ParamType.String,
          false,
        ),
        bookedDates: deserializeParam(
          data['bookedDates'],
          ParamType.String,
          false,
        ),
        propTypes: deserializeParam(
          data['propTypes'],
          ParamType.String,
          false,
        ),
        bedCount: deserializeParam(
          data['bedCount'],
          ParamType.int,
          false,
        ),
        bedRoomCount: deserializeParam(
          data['bedRoomCount'],
          ParamType.int,
          false,
        ),
        bathRoomCount: deserializeParam(
          data['bathRoomCount'],
          ParamType.int,
          false,
        ),
        articleId: deserializeParam(
          data['articleId'],
          ParamType.String,
          false,
        ),
        propId: deserializeParam(
          data['propId'],
          ParamType.int,
          false,
        ),
        totalPrice: deserializeParam(
          data['totalPrice'],
          ParamType.double,
          false,
        ),
        pricePerRoom: deserializeParam(
          data['pricePerRoom'],
          ParamType.double,
          false,
        ),
        guestsPerRoom: deserializeParam(
          data['guestsPerRoom'],
          ParamType.int,
          false,
        ),
        partialBookedDates: deserializeParam(
          data['partialBookedDates'],
          ParamType.String,
          false,
        ),
        sharedBookingAllowed: deserializeParam(
          data['sharedBookingAllowed'],
          ParamType.bool,
          false,
        ),
        partiallyAvailableRooms: deserializeParam(
          data['partiallyAvailableRooms'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        addressDetails: deserializeParam(
          data['addressDetails'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BookingDetailsPageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BookingDetailsPageStruct &&
        taxPercent == other.taxPercent &&
        title == other.title &&
        locality == other.locality &&
        city == other.city &&
        guestCount == other.guestCount &&
        availableFromDate == other.availableFromDate &&
        bookedDates == other.bookedDates &&
        propTypes == other.propTypes &&
        bedCount == other.bedCount &&
        bedRoomCount == other.bedRoomCount &&
        bathRoomCount == other.bathRoomCount &&
        articleId == other.articleId &&
        propId == other.propId &&
        totalPrice == other.totalPrice &&
        pricePerRoom == other.pricePerRoom &&
        guestsPerRoom == other.guestsPerRoom &&
        partialBookedDates == other.partialBookedDates &&
        sharedBookingAllowed == other.sharedBookingAllowed &&
        partiallyAvailableRooms == other.partiallyAvailableRooms &&
        image == other.image &&
        addressDetails == other.addressDetails;
  }

  @override
  int get hashCode => const ListEquality().hash([
        taxPercent,
        title,
        locality,
        city,
        guestCount,
        availableFromDate,
        bookedDates,
        propTypes,
        bedCount,
        bedRoomCount,
        bathRoomCount,
        articleId,
        propId,
        totalPrice,
        pricePerRoom,
        guestsPerRoom,
        partialBookedDates,
        sharedBookingAllowed,
        partiallyAvailableRooms,
        image,
        addressDetails
      ]);
}

BookingDetailsPageStruct createBookingDetailsPageStruct({
  int? taxPercent,
  String? title,
  String? locality,
  String? city,
  int? guestCount,
  String? availableFromDate,
  String? bookedDates,
  String? propTypes,
  int? bedCount,
  int? bedRoomCount,
  int? bathRoomCount,
  String? articleId,
  int? propId,
  double? totalPrice,
  double? pricePerRoom,
  int? guestsPerRoom,
  String? partialBookedDates,
  bool? sharedBookingAllowed,
  int? partiallyAvailableRooms,
  String? image,
  String? addressDetails,
}) =>
    BookingDetailsPageStruct(
      taxPercent: taxPercent,
      title: title,
      locality: locality,
      city: city,
      guestCount: guestCount,
      availableFromDate: availableFromDate,
      bookedDates: bookedDates,
      propTypes: propTypes,
      bedCount: bedCount,
      bedRoomCount: bedRoomCount,
      bathRoomCount: bathRoomCount,
      articleId: articleId,
      propId: propId,
      totalPrice: totalPrice,
      pricePerRoom: pricePerRoom,
      guestsPerRoom: guestsPerRoom,
      partialBookedDates: partialBookedDates,
      sharedBookingAllowed: sharedBookingAllowed,
      partiallyAvailableRooms: partiallyAvailableRooms,
      image: image,
      addressDetails: addressDetails,
    );
