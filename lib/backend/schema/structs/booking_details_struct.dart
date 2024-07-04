// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingDetailsStruct extends BaseStruct {
  BookingDetailsStruct({
    String? propLocality,
    String? propCity,
    String? propType,
    double? propBasePrice,
    int? guestsCount,
    int? taxPercentage,
    DateTime? checkInDate,
    DateTime? checkOutDate,
    int? noOfBedrooms,
    int? noOfBeds,
    int? noOfBathrooms,
    double? nightPrice,
    double? taxPrice,
    double? totalPrice,
    int? noOfStayingDaysCount,
    String? articleid,
    int? propId,
    String? propTitle,
    bool? bookingEntireProperty,
  })  : _propLocality = propLocality,
        _propCity = propCity,
        _propType = propType,
        _propBasePrice = propBasePrice,
        _guestsCount = guestsCount,
        _taxPercentage = taxPercentage,
        _checkInDate = checkInDate,
        _checkOutDate = checkOutDate,
        _noOfBedrooms = noOfBedrooms,
        _noOfBeds = noOfBeds,
        _noOfBathrooms = noOfBathrooms,
        _nightPrice = nightPrice,
        _taxPrice = taxPrice,
        _totalPrice = totalPrice,
        _noOfStayingDaysCount = noOfStayingDaysCount,
        _articleid = articleid,
        _propId = propId,
        _propTitle = propTitle,
        _bookingEntireProperty = bookingEntireProperty;

  // "prop_locality" field.
  String? _propLocality;
  String get propLocality => _propLocality ?? '';
  set propLocality(String? val) => _propLocality = val;

  bool hasPropLocality() => _propLocality != null;

  // "prop_city" field.
  String? _propCity;
  String get propCity => _propCity ?? '';
  set propCity(String? val) => _propCity = val;

  bool hasPropCity() => _propCity != null;

  // "prop_type" field.
  String? _propType;
  String get propType => _propType ?? '';
  set propType(String? val) => _propType = val;

  bool hasPropType() => _propType != null;

  // "prop_base_price" field.
  double? _propBasePrice;
  double get propBasePrice => _propBasePrice ?? 0.0;
  set propBasePrice(double? val) => _propBasePrice = val;

  void incrementPropBasePrice(double amount) =>
      propBasePrice = propBasePrice + amount;

  bool hasPropBasePrice() => _propBasePrice != null;

  // "guests_count" field.
  int? _guestsCount;
  int get guestsCount => _guestsCount ?? 0;
  set guestsCount(int? val) => _guestsCount = val;

  void incrementGuestsCount(int amount) => guestsCount = guestsCount + amount;

  bool hasGuestsCount() => _guestsCount != null;

  // "tax_percentage" field.
  int? _taxPercentage;
  int get taxPercentage => _taxPercentage ?? 0;
  set taxPercentage(int? val) => _taxPercentage = val;

  void incrementTaxPercentage(int amount) =>
      taxPercentage = taxPercentage + amount;

  bool hasTaxPercentage() => _taxPercentage != null;

  // "check_in_date" field.
  DateTime? _checkInDate;
  DateTime? get checkInDate => _checkInDate;
  set checkInDate(DateTime? val) => _checkInDate = val;

  bool hasCheckInDate() => _checkInDate != null;

  // "check_out_date" field.
  DateTime? _checkOutDate;
  DateTime? get checkOutDate => _checkOutDate;
  set checkOutDate(DateTime? val) => _checkOutDate = val;

  bool hasCheckOutDate() => _checkOutDate != null;

  // "no_of_bedrooms" field.
  int? _noOfBedrooms;
  int get noOfBedrooms => _noOfBedrooms ?? 0;
  set noOfBedrooms(int? val) => _noOfBedrooms = val;

  void incrementNoOfBedrooms(int amount) =>
      noOfBedrooms = noOfBedrooms + amount;

  bool hasNoOfBedrooms() => _noOfBedrooms != null;

  // "no_of_beds" field.
  int? _noOfBeds;
  int get noOfBeds => _noOfBeds ?? 0;
  set noOfBeds(int? val) => _noOfBeds = val;

  void incrementNoOfBeds(int amount) => noOfBeds = noOfBeds + amount;

  bool hasNoOfBeds() => _noOfBeds != null;

  // "no_of_bathrooms" field.
  int? _noOfBathrooms;
  int get noOfBathrooms => _noOfBathrooms ?? 0;
  set noOfBathrooms(int? val) => _noOfBathrooms = val;

  void incrementNoOfBathrooms(int amount) =>
      noOfBathrooms = noOfBathrooms + amount;

  bool hasNoOfBathrooms() => _noOfBathrooms != null;

  // "night_price" field.
  double? _nightPrice;
  double get nightPrice => _nightPrice ?? 0.0;
  set nightPrice(double? val) => _nightPrice = val;

  void incrementNightPrice(double amount) => nightPrice = nightPrice + amount;

  bool hasNightPrice() => _nightPrice != null;

  // "tax_price" field.
  double? _taxPrice;
  double get taxPrice => _taxPrice ?? 0.0;
  set taxPrice(double? val) => _taxPrice = val;

  void incrementTaxPrice(double amount) => taxPrice = taxPrice + amount;

  bool hasTaxPrice() => _taxPrice != null;

  // "total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  set totalPrice(double? val) => _totalPrice = val;

  void incrementTotalPrice(double amount) => totalPrice = totalPrice + amount;

  bool hasTotalPrice() => _totalPrice != null;

  // "no_of_staying_days_count" field.
  int? _noOfStayingDaysCount;
  int get noOfStayingDaysCount => _noOfStayingDaysCount ?? 0;
  set noOfStayingDaysCount(int? val) => _noOfStayingDaysCount = val;

  void incrementNoOfStayingDaysCount(int amount) =>
      noOfStayingDaysCount = noOfStayingDaysCount + amount;

  bool hasNoOfStayingDaysCount() => _noOfStayingDaysCount != null;

  // "articleid" field.
  String? _articleid;
  String get articleid => _articleid ?? '';
  set articleid(String? val) => _articleid = val;

  bool hasArticleid() => _articleid != null;

  // "prop_id" field.
  int? _propId;
  int get propId => _propId ?? 0;
  set propId(int? val) => _propId = val;

  void incrementPropId(int amount) => propId = propId + amount;

  bool hasPropId() => _propId != null;

  // "prop_title" field.
  String? _propTitle;
  String get propTitle => _propTitle ?? '';
  set propTitle(String? val) => _propTitle = val;

  bool hasPropTitle() => _propTitle != null;

  // "bookingEntireProperty" field.
  bool? _bookingEntireProperty;
  bool get bookingEntireProperty => _bookingEntireProperty ?? false;
  set bookingEntireProperty(bool? val) => _bookingEntireProperty = val;

  bool hasBookingEntireProperty() => _bookingEntireProperty != null;

  static BookingDetailsStruct fromMap(Map<String, dynamic> data) =>
      BookingDetailsStruct(
        propLocality: data['prop_locality'] as String?,
        propCity: data['prop_city'] as String?,
        propType: data['prop_type'] as String?,
        propBasePrice: castToType<double>(data['prop_base_price']),
        guestsCount: castToType<int>(data['guests_count']),
        taxPercentage: castToType<int>(data['tax_percentage']),
        checkInDate: data['check_in_date'] as DateTime?,
        checkOutDate: data['check_out_date'] as DateTime?,
        noOfBedrooms: castToType<int>(data['no_of_bedrooms']),
        noOfBeds: castToType<int>(data['no_of_beds']),
        noOfBathrooms: castToType<int>(data['no_of_bathrooms']),
        nightPrice: castToType<double>(data['night_price']),
        taxPrice: castToType<double>(data['tax_price']),
        totalPrice: castToType<double>(data['total_price']),
        noOfStayingDaysCount: castToType<int>(data['no_of_staying_days_count']),
        articleid: data['articleid'] as String?,
        propId: castToType<int>(data['prop_id']),
        propTitle: data['prop_title'] as String?,
        bookingEntireProperty: data['bookingEntireProperty'] as bool?,
      );

  static BookingDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? BookingDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'prop_locality': _propLocality,
        'prop_city': _propCity,
        'prop_type': _propType,
        'prop_base_price': _propBasePrice,
        'guests_count': _guestsCount,
        'tax_percentage': _taxPercentage,
        'check_in_date': _checkInDate,
        'check_out_date': _checkOutDate,
        'no_of_bedrooms': _noOfBedrooms,
        'no_of_beds': _noOfBeds,
        'no_of_bathrooms': _noOfBathrooms,
        'night_price': _nightPrice,
        'tax_price': _taxPrice,
        'total_price': _totalPrice,
        'no_of_staying_days_count': _noOfStayingDaysCount,
        'articleid': _articleid,
        'prop_id': _propId,
        'prop_title': _propTitle,
        'bookingEntireProperty': _bookingEntireProperty,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'prop_locality': serializeParam(
          _propLocality,
          ParamType.String,
        ),
        'prop_city': serializeParam(
          _propCity,
          ParamType.String,
        ),
        'prop_type': serializeParam(
          _propType,
          ParamType.String,
        ),
        'prop_base_price': serializeParam(
          _propBasePrice,
          ParamType.double,
        ),
        'guests_count': serializeParam(
          _guestsCount,
          ParamType.int,
        ),
        'tax_percentage': serializeParam(
          _taxPercentage,
          ParamType.int,
        ),
        'check_in_date': serializeParam(
          _checkInDate,
          ParamType.DateTime,
        ),
        'check_out_date': serializeParam(
          _checkOutDate,
          ParamType.DateTime,
        ),
        'no_of_bedrooms': serializeParam(
          _noOfBedrooms,
          ParamType.int,
        ),
        'no_of_beds': serializeParam(
          _noOfBeds,
          ParamType.int,
        ),
        'no_of_bathrooms': serializeParam(
          _noOfBathrooms,
          ParamType.int,
        ),
        'night_price': serializeParam(
          _nightPrice,
          ParamType.double,
        ),
        'tax_price': serializeParam(
          _taxPrice,
          ParamType.double,
        ),
        'total_price': serializeParam(
          _totalPrice,
          ParamType.double,
        ),
        'no_of_staying_days_count': serializeParam(
          _noOfStayingDaysCount,
          ParamType.int,
        ),
        'articleid': serializeParam(
          _articleid,
          ParamType.String,
        ),
        'prop_id': serializeParam(
          _propId,
          ParamType.int,
        ),
        'prop_title': serializeParam(
          _propTitle,
          ParamType.String,
        ),
        'bookingEntireProperty': serializeParam(
          _bookingEntireProperty,
          ParamType.bool,
        ),
      }.withoutNulls;

  static BookingDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      BookingDetailsStruct(
        propLocality: deserializeParam(
          data['prop_locality'],
          ParamType.String,
          false,
        ),
        propCity: deserializeParam(
          data['prop_city'],
          ParamType.String,
          false,
        ),
        propType: deserializeParam(
          data['prop_type'],
          ParamType.String,
          false,
        ),
        propBasePrice: deserializeParam(
          data['prop_base_price'],
          ParamType.double,
          false,
        ),
        guestsCount: deserializeParam(
          data['guests_count'],
          ParamType.int,
          false,
        ),
        taxPercentage: deserializeParam(
          data['tax_percentage'],
          ParamType.int,
          false,
        ),
        checkInDate: deserializeParam(
          data['check_in_date'],
          ParamType.DateTime,
          false,
        ),
        checkOutDate: deserializeParam(
          data['check_out_date'],
          ParamType.DateTime,
          false,
        ),
        noOfBedrooms: deserializeParam(
          data['no_of_bedrooms'],
          ParamType.int,
          false,
        ),
        noOfBeds: deserializeParam(
          data['no_of_beds'],
          ParamType.int,
          false,
        ),
        noOfBathrooms: deserializeParam(
          data['no_of_bathrooms'],
          ParamType.int,
          false,
        ),
        nightPrice: deserializeParam(
          data['night_price'],
          ParamType.double,
          false,
        ),
        taxPrice: deserializeParam(
          data['tax_price'],
          ParamType.double,
          false,
        ),
        totalPrice: deserializeParam(
          data['total_price'],
          ParamType.double,
          false,
        ),
        noOfStayingDaysCount: deserializeParam(
          data['no_of_staying_days_count'],
          ParamType.int,
          false,
        ),
        articleid: deserializeParam(
          data['articleid'],
          ParamType.String,
          false,
        ),
        propId: deserializeParam(
          data['prop_id'],
          ParamType.int,
          false,
        ),
        propTitle: deserializeParam(
          data['prop_title'],
          ParamType.String,
          false,
        ),
        bookingEntireProperty: deserializeParam(
          data['bookingEntireProperty'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'BookingDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BookingDetailsStruct &&
        propLocality == other.propLocality &&
        propCity == other.propCity &&
        propType == other.propType &&
        propBasePrice == other.propBasePrice &&
        guestsCount == other.guestsCount &&
        taxPercentage == other.taxPercentage &&
        checkInDate == other.checkInDate &&
        checkOutDate == other.checkOutDate &&
        noOfBedrooms == other.noOfBedrooms &&
        noOfBeds == other.noOfBeds &&
        noOfBathrooms == other.noOfBathrooms &&
        nightPrice == other.nightPrice &&
        taxPrice == other.taxPrice &&
        totalPrice == other.totalPrice &&
        noOfStayingDaysCount == other.noOfStayingDaysCount &&
        articleid == other.articleid &&
        propId == other.propId &&
        propTitle == other.propTitle &&
        bookingEntireProperty == other.bookingEntireProperty;
  }

  @override
  int get hashCode => const ListEquality().hash([
        propLocality,
        propCity,
        propType,
        propBasePrice,
        guestsCount,
        taxPercentage,
        checkInDate,
        checkOutDate,
        noOfBedrooms,
        noOfBeds,
        noOfBathrooms,
        nightPrice,
        taxPrice,
        totalPrice,
        noOfStayingDaysCount,
        articleid,
        propId,
        propTitle,
        bookingEntireProperty
      ]);
}

BookingDetailsStruct createBookingDetailsStruct({
  String? propLocality,
  String? propCity,
  String? propType,
  double? propBasePrice,
  int? guestsCount,
  int? taxPercentage,
  DateTime? checkInDate,
  DateTime? checkOutDate,
  int? noOfBedrooms,
  int? noOfBeds,
  int? noOfBathrooms,
  double? nightPrice,
  double? taxPrice,
  double? totalPrice,
  int? noOfStayingDaysCount,
  String? articleid,
  int? propId,
  String? propTitle,
  bool? bookingEntireProperty,
}) =>
    BookingDetailsStruct(
      propLocality: propLocality,
      propCity: propCity,
      propType: propType,
      propBasePrice: propBasePrice,
      guestsCount: guestsCount,
      taxPercentage: taxPercentage,
      checkInDate: checkInDate,
      checkOutDate: checkOutDate,
      noOfBedrooms: noOfBedrooms,
      noOfBeds: noOfBeds,
      noOfBathrooms: noOfBathrooms,
      nightPrice: nightPrice,
      taxPrice: taxPrice,
      totalPrice: totalPrice,
      noOfStayingDaysCount: noOfStayingDaysCount,
      articleid: articleid,
      propId: propId,
      propTitle: propTitle,
      bookingEntireProperty: bookingEntireProperty,
    );
