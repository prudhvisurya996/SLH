// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModifyBookingPageStruct extends BaseStruct {
  ModifyBookingPageStruct({
    String? title,
    String? locality,
    String? city,
    int? guestCount,
    int? totalAmount,
    int? basePrice,
    int? taxPaid,
    String? checkInDate,
    String? checkOutDate,
    String? articleId,
    String? propBookedDates,
    String? propType,
    String? propAvailableFrom,
    int? propertyId,
    String? bookingId,
  })  : _title = title,
        _locality = locality,
        _city = city,
        _guestCount = guestCount,
        _totalAmount = totalAmount,
        _basePrice = basePrice,
        _taxPaid = taxPaid,
        _checkInDate = checkInDate,
        _checkOutDate = checkOutDate,
        _articleId = articleId,
        _propBookedDates = propBookedDates,
        _propType = propType,
        _propAvailableFrom = propAvailableFrom,
        _propertyId = propertyId,
        _bookingId = bookingId;

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

  // "totalAmount" field.
  int? _totalAmount;
  int get totalAmount => _totalAmount ?? 0;
  set totalAmount(int? val) => _totalAmount = val;

  void incrementTotalAmount(int amount) => totalAmount = totalAmount + amount;

  bool hasTotalAmount() => _totalAmount != null;

  // "basePrice" field.
  int? _basePrice;
  int get basePrice => _basePrice ?? 0;
  set basePrice(int? val) => _basePrice = val;

  void incrementBasePrice(int amount) => basePrice = basePrice + amount;

  bool hasBasePrice() => _basePrice != null;

  // "taxPaid" field.
  int? _taxPaid;
  int get taxPaid => _taxPaid ?? 0;
  set taxPaid(int? val) => _taxPaid = val;

  void incrementTaxPaid(int amount) => taxPaid = taxPaid + amount;

  bool hasTaxPaid() => _taxPaid != null;

  // "checkInDate" field.
  String? _checkInDate;
  String get checkInDate => _checkInDate ?? '';
  set checkInDate(String? val) => _checkInDate = val;

  bool hasCheckInDate() => _checkInDate != null;

  // "checkOutDate" field.
  String? _checkOutDate;
  String get checkOutDate => _checkOutDate ?? '';
  set checkOutDate(String? val) => _checkOutDate = val;

  bool hasCheckOutDate() => _checkOutDate != null;

  // "articleId" field.
  String? _articleId;
  String get articleId => _articleId ?? '';
  set articleId(String? val) => _articleId = val;

  bool hasArticleId() => _articleId != null;

  // "propBookedDates" field.
  String? _propBookedDates;
  String get propBookedDates => _propBookedDates ?? '';
  set propBookedDates(String? val) => _propBookedDates = val;

  bool hasPropBookedDates() => _propBookedDates != null;

  // "propType" field.
  String? _propType;
  String get propType => _propType ?? '';
  set propType(String? val) => _propType = val;

  bool hasPropType() => _propType != null;

  // "propAvailableFrom" field.
  String? _propAvailableFrom;
  String get propAvailableFrom => _propAvailableFrom ?? '';
  set propAvailableFrom(String? val) => _propAvailableFrom = val;

  bool hasPropAvailableFrom() => _propAvailableFrom != null;

  // "propertyId" field.
  int? _propertyId;
  int get propertyId => _propertyId ?? 0;
  set propertyId(int? val) => _propertyId = val;

  void incrementPropertyId(int amount) => propertyId = propertyId + amount;

  bool hasPropertyId() => _propertyId != null;

  // "bookingId" field.
  String? _bookingId;
  String get bookingId => _bookingId ?? '';
  set bookingId(String? val) => _bookingId = val;

  bool hasBookingId() => _bookingId != null;

  static ModifyBookingPageStruct fromMap(Map<String, dynamic> data) =>
      ModifyBookingPageStruct(
        title: data['title'] as String?,
        locality: data['locality'] as String?,
        city: data['city'] as String?,
        guestCount: castToType<int>(data['guestCount']),
        totalAmount: castToType<int>(data['totalAmount']),
        basePrice: castToType<int>(data['basePrice']),
        taxPaid: castToType<int>(data['taxPaid']),
        checkInDate: data['checkInDate'] as String?,
        checkOutDate: data['checkOutDate'] as String?,
        articleId: data['articleId'] as String?,
        propBookedDates: data['propBookedDates'] as String?,
        propType: data['propType'] as String?,
        propAvailableFrom: data['propAvailableFrom'] as String?,
        propertyId: castToType<int>(data['propertyId']),
        bookingId: data['bookingId'] as String?,
      );

  static ModifyBookingPageStruct? maybeFromMap(dynamic data) => data is Map
      ? ModifyBookingPageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'locality': _locality,
        'city': _city,
        'guestCount': _guestCount,
        'totalAmount': _totalAmount,
        'basePrice': _basePrice,
        'taxPaid': _taxPaid,
        'checkInDate': _checkInDate,
        'checkOutDate': _checkOutDate,
        'articleId': _articleId,
        'propBookedDates': _propBookedDates,
        'propType': _propType,
        'propAvailableFrom': _propAvailableFrom,
        'propertyId': _propertyId,
        'bookingId': _bookingId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'totalAmount': serializeParam(
          _totalAmount,
          ParamType.int,
        ),
        'basePrice': serializeParam(
          _basePrice,
          ParamType.int,
        ),
        'taxPaid': serializeParam(
          _taxPaid,
          ParamType.int,
        ),
        'checkInDate': serializeParam(
          _checkInDate,
          ParamType.String,
        ),
        'checkOutDate': serializeParam(
          _checkOutDate,
          ParamType.String,
        ),
        'articleId': serializeParam(
          _articleId,
          ParamType.String,
        ),
        'propBookedDates': serializeParam(
          _propBookedDates,
          ParamType.String,
        ),
        'propType': serializeParam(
          _propType,
          ParamType.String,
        ),
        'propAvailableFrom': serializeParam(
          _propAvailableFrom,
          ParamType.String,
        ),
        'propertyId': serializeParam(
          _propertyId,
          ParamType.int,
        ),
        'bookingId': serializeParam(
          _bookingId,
          ParamType.String,
        ),
      }.withoutNulls;

  static ModifyBookingPageStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ModifyBookingPageStruct(
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
        totalAmount: deserializeParam(
          data['totalAmount'],
          ParamType.int,
          false,
        ),
        basePrice: deserializeParam(
          data['basePrice'],
          ParamType.int,
          false,
        ),
        taxPaid: deserializeParam(
          data['taxPaid'],
          ParamType.int,
          false,
        ),
        checkInDate: deserializeParam(
          data['checkInDate'],
          ParamType.String,
          false,
        ),
        checkOutDate: deserializeParam(
          data['checkOutDate'],
          ParamType.String,
          false,
        ),
        articleId: deserializeParam(
          data['articleId'],
          ParamType.String,
          false,
        ),
        propBookedDates: deserializeParam(
          data['propBookedDates'],
          ParamType.String,
          false,
        ),
        propType: deserializeParam(
          data['propType'],
          ParamType.String,
          false,
        ),
        propAvailableFrom: deserializeParam(
          data['propAvailableFrom'],
          ParamType.String,
          false,
        ),
        propertyId: deserializeParam(
          data['propertyId'],
          ParamType.int,
          false,
        ),
        bookingId: deserializeParam(
          data['bookingId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ModifyBookingPageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ModifyBookingPageStruct &&
        title == other.title &&
        locality == other.locality &&
        city == other.city &&
        guestCount == other.guestCount &&
        totalAmount == other.totalAmount &&
        basePrice == other.basePrice &&
        taxPaid == other.taxPaid &&
        checkInDate == other.checkInDate &&
        checkOutDate == other.checkOutDate &&
        articleId == other.articleId &&
        propBookedDates == other.propBookedDates &&
        propType == other.propType &&
        propAvailableFrom == other.propAvailableFrom &&
        propertyId == other.propertyId &&
        bookingId == other.bookingId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        locality,
        city,
        guestCount,
        totalAmount,
        basePrice,
        taxPaid,
        checkInDate,
        checkOutDate,
        articleId,
        propBookedDates,
        propType,
        propAvailableFrom,
        propertyId,
        bookingId
      ]);
}

ModifyBookingPageStruct createModifyBookingPageStruct({
  String? title,
  String? locality,
  String? city,
  int? guestCount,
  int? totalAmount,
  int? basePrice,
  int? taxPaid,
  String? checkInDate,
  String? checkOutDate,
  String? articleId,
  String? propBookedDates,
  String? propType,
  String? propAvailableFrom,
  int? propertyId,
  String? bookingId,
}) =>
    ModifyBookingPageStruct(
      title: title,
      locality: locality,
      city: city,
      guestCount: guestCount,
      totalAmount: totalAmount,
      basePrice: basePrice,
      taxPaid: taxPaid,
      checkInDate: checkInDate,
      checkOutDate: checkOutDate,
      articleId: articleId,
      propBookedDates: propBookedDates,
      propType: propType,
      propAvailableFrom: propAvailableFrom,
      propertyId: propertyId,
      bookingId: bookingId,
    );
