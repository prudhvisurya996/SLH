import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Liferay Base Url Group Code

class LiferayBaseUrlGroup {
  static String getBaseUrl() => 'https://hospitality-dev.demo.sidglobal.cloud';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static GetAmenitiesCall getAmenitiesCall = GetAmenitiesCall();
  static GetPropertyTypesCall getPropertyTypesCall = GetPropertyTypesCall();
  static TcPpCpApiCall tcPpCpApiCall = TcPpCpApiCall();
  static UploadHostPropertyCall uploadHostPropertyCall =
      UploadHostPropertyCall();
  static UpdatePasswordAPICall updatePasswordAPICall = UpdatePasswordAPICall();
  static UpdateUserAPICall updateUserAPICall = UpdateUserAPICall();
  static UserDetailsAPICall userDetailsAPICall = UserDetailsAPICall();
  static ContactUsAPICall contactUsAPICall = ContactUsAPICall();
  static InitiateBookingCall initiateBookingCall = InitiateBookingCall();
  static CompleteBookingCall completeBookingCall = CompleteBookingCall();
  static CancelBookingCall cancelBookingCall = CancelBookingCall();
  static SubmitRatingReviewCall submitRatingReviewCall =
      SubmitRatingReviewCall();
  static ChangePropertyStatusByPMCall changePropertyStatusByPMCall =
      ChangePropertyStatusByPMCall();
  static InitialMobileNumAndOTPCall initialMobileNumAndOTPCall =
      InitialMobileNumAndOTPCall();
  static OTPVerificationCall oTPVerificationCall = OTPVerificationCall();
  static ExternalHostWelcomePageConsentCall externalHostWelcomePageConsentCall =
      ExternalHostWelcomePageConsentCall();
  static ModifyBookingDetailsCall modifyBookingDetailsCall =
      ModifyBookingDetailsCall();
  static ExHostSubPropertyTypesCall exHostSubPropertyTypesCall =
      ExHostSubPropertyTypesCall();
  static ExHostPropertyCall exHostPropertyCall = ExHostPropertyCall();
  static ExHostPropertySecondHalfCall exHostPropertySecondHalfCall =
      ExHostPropertySecondHalfCall();
  static AssigningToPICall assigningToPICall = AssigningToPICall();
  static RejectingExternalPropertyByPMCall rejectingExternalPropertyByPMCall =
      RejectingExternalPropertyByPMCall();
  static AssignUsersToRoleNameCall assignUsersToRoleNameCall =
      AssignUsersToRoleNameCall();
  static PIStatusUpdateCall pIStatusUpdateCall = PIStatusUpdateCall();
  static PIATSubmitFeedbackCall pIATSubmitFeedbackCall =
      PIATSubmitFeedbackCall();
  static ATStatusUpdateCall aTStatusUpdateCall = ATStatusUpdateCall();
  static AssigningToATCall assigningToATCall = AssigningToATCall();
  static FeaturedLocationsCall featuredLocationsCall = FeaturedLocationsCall();
  static ContentCall contentCall = ContentCall();
}

class GetAmenitiesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Amenities',
      apiUrl: '${baseUrl}/o/pZ/v1.0/amenities',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? basicAmenities(dynamic response) => getJsonField(
        response,
        r'''$.Basic''',
        true,
      ) as List?;
  List? securityAmenities(dynamic response) => getJsonField(
        response,
        r'''$.Security''',
        true,
      ) as List?;
}

class GetPropertyTypesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Property Types',
      apiUrl: '${baseUrl}/o/pZ/v1.0/propertyTypes',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TcPpCpApiCall {
  Future<ApiCallResponse> call({
    String? articleName = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'TC PP CP API',
      apiUrl: '${baseUrl}/o/vZ/v1.0/content',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'articleName': articleName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Content''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Title''',
      ));
}

class UploadHostPropertyCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    dynamic? propertyDetailsJson,
    dynamic? filesArrayJson,
    FFUploadedFile? file1,
    FFUploadedFile? file2,
    FFUploadedFile? file3,
    FFUploadedFile? file4,
    FFUploadedFile? file5,
    FFUploadedFile? file6,
    FFUploadedFile? file7,
    FFUploadedFile? file8,
    FFUploadedFile? file9,
    FFUploadedFile? file10,
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final propertyDetails = _serializeJson(propertyDetailsJson);
    final filesArray = _serializeJson(filesArrayJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'Upload Host Property',
      apiUrl: '${baseUrl}/o/pZ/v1.0/property',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Content-Type': 'multipart/form-data',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'propertyDetails': propertyDetails,
        'filesArray': filesArray,
        'file1': file1,
        'file2': file2,
        'file3': file3,
        'file4': file4,
        'file5': file5,
        'file6': file6,
        'file7': file7,
        'file8': file8,
        'file9': file9,
        'file10': file10,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePasswordAPICall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? currentPassword = '',
    String? newPassword = '',
    String? confirmNewPassword = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "currentPassword": "${currentPassword}",
  "newPassword": "${newPassword}",
  "confirmNewPassword": "${confirmNewPassword}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Password API',
      apiUrl: '${baseUrl}/o/vZ/v1.0/updatePassword',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserAPICall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? firstName = '',
    String? lastName = '',
    String? phoneNumber = '',
    String? dateOfBirth = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "dateOfBirth": "${dateOfBirth}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "phoneNumber": "${phoneNumber}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User API',
      apiUrl: '${baseUrl}/o/vZ/v1.0/updateUser',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UserDetailsAPICall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'User Details API',
      apiUrl: '${baseUrl}/o/vZ/v1.0/userDetails',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ContactUsAPICall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? fullName = '',
    String? mobileNumber = '',
    String? emailAddress = '',
    String? title = '',
    String? description = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "fullName": "${fullName}",
  "mobileNumber": "${mobileNumber}",
  "emailAddress": "${emailAddress}",
  "title": "${title}",
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Contact Us API',
      apiUrl: '${baseUrl}/o/vZ/v1.0/contactUs',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InitiateBookingCall {
  Future<ApiCallResponse> call({
    String? checkIn = '',
    String? checkOut = '',
    int? propertyId,
    double? totalAmount,
    int? totalGuests,
    double? totalTax,
    String? accesssToken = '',
    int? rooms,
    bool? entirePropertyBooking,
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "checkIn": "${checkIn}",
  "checkOut": "${checkOut}",
  "propertyId": "${propertyId}",
  "totalAmount": "${totalAmount}",
  "totalGuests": "${totalGuests}",
  "totalTax": "${totalTax}",
  "rooms": ${rooms},
  "entirePropertyBooking": ${entirePropertyBooking}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Initiate Booking',
      apiUrl: '${baseUrl}/o/bZ/v1.0/initiateBooking',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accesssToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CompleteBookingCall {
  Future<ApiCallResponse> call({
    String? bookingId = '',
    int? errorCode,
    String? errorResponse = '',
    String? razorOrderId = '',
    String? razorPaymentId = '',
    String? razorSignature = '',
    String? accessToken = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "bookingId": "${bookingId}",
  "errorCode": ${errorCode},
  "errorResponse": "${errorResponse}",
  "razorOrderId": "${razorOrderId}",
  "razorPaymentId": "${razorPaymentId}",
  "razorSignature": "${razorSignature}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'COMPLETE BOOKING',
      apiUrl: '${baseUrl}/o/bZ/v1.0/completeBooking',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic reviewStatus(dynamic response) => getJsonField(
        response,
        r'''$.reviewStatus''',
      );
}

class CancelBookingCall {
  Future<ApiCallResponse> call({
    String? bookingid = '',
    String? reason = '',
    String? accessToken = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "bookingId": "${bookingid}",
  "reason": "${reason}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cancel Booking',
      apiUrl: '${baseUrl}/o/bZ/v1.0/cancelBooking',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SubmitRatingReviewCall {
  Future<ApiCallResponse> call({
    String? bookingId = '',
    int? propertyId,
    double? rating,
    String? comment = '',
    String? accessToken = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "bookingId": "${bookingId}",
  "propertyId": ${propertyId},
  "rating": ${rating},
  "comment": "${comment}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Submit Rating Review',
      apiUrl: '${baseUrl}/o/bZ/v1.0/reviewRatings',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangePropertyStatusByPMCall {
  Future<ApiCallResponse> call({
    int? propertyId,
    int? status,
    String? comments = '',
    String? accessToken = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "propertyId": ${propertyId},
  "status": ${status},
  "comments": "${comments}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Change Property Status By PM',
      apiUrl: '${baseUrl}/o/pZ/v1.0/updatePropertyStatus',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InitialMobileNumAndOTPCall {
  Future<ApiCallResponse> call({
    String? otp = '',
    String? phoneNumber = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "otp": "${otp}",
  "phoneNumber": "${phoneNumber}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Initial Mobile Num and OTP',
      apiUrl: '${baseUrl}/o/vZ/v1.0/mobileOTPInitiate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OTPVerificationCall {
  Future<ApiCallResponse> call({
    String? otp = '',
    String? phoneNumber = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "otp": "${otp}",
  "phoneNumber": "${phoneNumber}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OTP Verification',
      apiUrl: '${baseUrl}/o/vZ/v1.0/mobileOTPVerification',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ExternalHostWelcomePageConsentCall {
  Future<ApiCallResponse> call({
    String? articleName = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'External Host Welcome Page Consent',
      apiUrl: '${baseUrl}/o/vZ/v1.0/contentWithImage',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'articleName': articleName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? content(dynamic response) => (getJsonField(
        response,
        r'''$[0].Content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$[0].Title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$[0].Image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ModifyBookingDetailsCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? bookingId = '',
    String? articleId = '',
    int? propertyId,
    String? checkIn = '',
    String? checkOut = '',
    int? totalGuests,
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "bookingId": "${bookingId}",
  "articleId": "${articleId}",
  "propertyId": ${propertyId},
  "checkIn": "${checkIn}",
  "checkOut": "${checkOut}",
  "totalGuests": ${totalGuests}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Modify Booking Details',
      apiUrl: '${baseUrl}/o/bZ/v1.0/modifyBooking',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ExHostSubPropertyTypesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Ex Host Sub Property Types',
      apiUrl: '${baseUrl}/o/pZ/v1.0/propertySubTypes',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ExHostPropertyCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    dynamic? filesArrayJson,
    FFUploadedFile? file1,
    FFUploadedFile? file2,
    FFUploadedFile? file3,
    FFUploadedFile? file4,
    FFUploadedFile? file5,
    dynamic? propertyDetailsJson,
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final filesArray = _serializeJson(filesArrayJson, true);
    final propertyDetails = _serializeJson(propertyDetailsJson);

    return ApiManager.instance.makeApiCall(
      callName: 'Ex Host Property',
      apiUrl: '${baseUrl}/o/pZ/v1.0/externalProperty',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'file1': file1,
        'file2': file2,
        'file3': file3,
        'file4': file4,
        'file5': file5,
        'filesArray': filesArray,
        'propertyDetails': propertyDetails,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ExHostPropertySecondHalfCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    dynamic? filesArrayJson,
    dynamic? identityDetailsJson,
    FFUploadedFile? govId,
    FFUploadedFile? propDoc,
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final filesArray = _serializeJson(filesArrayJson, true);
    final identityDetails = _serializeJson(identityDetailsJson);

    return ApiManager.instance.makeApiCall(
      callName: 'Ex Host Property Second Half',
      apiUrl: '${baseUrl}/o/pZ/v1.0/propertyIdentity',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'filesArray': filesArray,
        'identityDetails': identityDetails,
        'govId': govId,
        'propDoc': propDoc,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AssigningToPICall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? articleId = '',
    int? assignedPhase,
    int? assignedToUserId,
    int? externalPropertyId,
    int? priority,
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "articleId": "${articleId}",
  "assignedPhase": ${assignedPhase},
  "assignedToUserId": ${assignedToUserId},
  "externalPropertyId": ${externalPropertyId},
  "priority": ${priority}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Assigning to PI',
      apiUrl: '${baseUrl}/o/pZ/v1.0/assignPropertyForReview',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RejectingExternalPropertyByPMCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? articleId = '',
    String? comments = '',
    int? propertyId,
    int? status,
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "articleId": "${articleId}",
  "comments": "${comments}",
  "propertyId": ${propertyId},
  "status": ${status}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Rejecting External Property by PM',
      apiUrl: '${baseUrl}/o/pZ/v1.0/updateExternalPropertyStatus',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AssignUsersToRoleNameCall {
  Future<ApiCallResponse> call({
    String? location = '',
    String? roleName = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Assign users to RoleName',
      apiUrl: '${baseUrl}/o/vZ/v1.0/roleUsersByLocation',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'location': location,
        'roleName': roleName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PIStatusUpdateCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    int? reviewId,
    int? status,
    String? comments = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "reviewId": ${reviewId},
  "status": ${status},
  "comments": "${comments}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PI Status Update',
      apiUrl: '${baseUrl}/o/pZ/v1.0/updatePropertyReviewStatus',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PIATSubmitFeedbackCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    int? reviewId,
    String? articleId = '',
    FFUploadedFile? propertyOwnerPicture,
    FFUploadedFile? additionalFile,
    dynamic? fileArrayJson,
    FFUploadedFile? file1,
    FFUploadedFile? file2,
    FFUploadedFile? file3,
    FFUploadedFile? file4,
    FFUploadedFile? file5,
    dynamic? feedbackJson,
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final fileArray = _serializeJson(fileArrayJson, true);
    final feedback = _serializeJson(feedbackJson);

    return ApiManager.instance.makeApiCall(
      callName: 'PI AT Submit Feedback',
      apiUrl: '${baseUrl}/o/pZ/v1.0/submitFeedback',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'reviewId': reviewId,
        'articleId': articleId,
        'propertyOwnerPicture': propertyOwnerPicture,
        'additionalFile': additionalFile,
        'fileArray': fileArray,
        'file1': file1,
        'file2': file2,
        'file3': file3,
        'file4': file4,
        'file5': file5,
        'feedback': feedback,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ATStatusUpdateCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    int? reviewId,
    int? status,
    String? comments = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "reviewId": ${reviewId},
  "status": ${status},
  "comments": "${comments}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AT Status Update',
      apiUrl: '${baseUrl}/o/pZ/v1.0/updatePropertyReviewStatus',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AssigningToATCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? articleId = '',
    int? assignedPhase,
    int? assignedToUserId,
    int? externalPropertyId,
    int? priority,
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "articleId": "${articleId}",
  "assignedPhase": ${assignedPhase},
  "assignedToUserId": ${assignedToUserId},
  "externalPropertyId": ${externalPropertyId},
  "priority": ${priority}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Assigning to AT',
      apiUrl: '${baseUrl}/o/pZ/v1.0/assignPropertyForReview',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FeaturedLocationsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Featured Locations',
      apiUrl: '${baseUrl}/o/vZ/v1.0/featuredLocations',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ContentCall {
  Future<ApiCallResponse> call({
    String? articleName = '',
  }) async {
    final baseUrl = LiferayBaseUrlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Content',
      apiUrl: '${baseUrl}/o/vZ/v1.0/content',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'articleName': articleName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Liferay Base Url Group Code

/// Start Microservice Availability APIs Group Code

class MicroserviceAvailabilityAPIsGroup {
  static String getBaseUrl() =>
      'https://hospitality-dev.demo.sidglobal.cloud/luxuryhomes-dev/lh-availability';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SearchAPICall searchAPICall = SearchAPICall();
  static FilterAPICall filterAPICall = FilterAPICall();
  static SearchFilterAPICall searchFilterAPICall = SearchFilterAPICall();
  static AllPropertiesAPICall allPropertiesAPICall = AllPropertiesAPICall();
  static HostPropertyListsCall hostPropertyListsCall = HostPropertyListsCall();
  static PropertyListingsCall propertyListingsCall = PropertyListingsCall();
  static PropertyDetailsCall propertyDetailsCall = PropertyDetailsCall();
  static AdminListingCall adminListingCall = AdminListingCall();
  static PMInternalPropertyFullViewCall pMInternalPropertyFullViewCall =
      PMInternalPropertyFullViewCall();
  static InternalHostDBPropertyFullViewCall internalHostDBPropertyFullViewCall =
      InternalHostDBPropertyFullViewCall();
  static SearchCitiesCall searchCitiesCall = SearchCitiesCall();
  static SearchLocalitiesCall searchLocalitiesCall = SearchLocalitiesCall();
  static AdminLRFullViewCall adminLRFullViewCall = AdminLRFullViewCall();
  static AdminLRListingCall adminLRListingCall = AdminLRListingCall();
  static ExternalHostDashBoardListingCall externalHostDashBoardListingCall =
      ExternalHostDashBoardListingCall();
  static ExternalHostDashboardFullViewCall externalHostDashboardFullViewCall =
      ExternalHostDashboardFullViewCall();
  static PropertyListingWithDatesCall propertyListingWithDatesCall =
      PropertyListingWithDatesCall();
}

class SearchAPICall {
  Future<ApiCallResponse> call({
    String? locality = '',
    String? city = '',
    int? totalGuests = 0,
    String? availableFrom = '',
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Search API',
      apiUrl: '${baseUrl}/v1/searchProperties',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'locality': locality,
        'city': city,
        'totalGuests': totalGuests,
        'availableFrom': availableFrom,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FilterAPICall {
  Future<ApiCallResponse> call({
    double? priceLowerLimit = 0,
    double? priceUpperLimit = 0,
    String? propertyTypeIds = '',
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Filter API',
      apiUrl: '${baseUrl}/v1/filterProperties',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'priceLowerLimit': priceLowerLimit,
        'priceUpperLimit': priceUpperLimit,
        'propertyTypeIds': propertyTypeIds,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchFilterAPICall {
  Future<ApiCallResponse> call({
    String? locality = '',
    String? city = '',
    int? totalGuests = 0,
    String? checkInDate = '',
    double? priceLowerLimit = 0,
    double? priceUpperLimit = 0,
    String? propertyTypeIds = '',
    int? loaditemsCount,
    int? pageNumber,
    String? checkOutDate = '',
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Search Filter API',
      apiUrl: '${baseUrl}/v1/searchProperties',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'locality': locality,
        'city': city,
        'totalGuests': totalGuests,
        'priceLowerLimit': priceLowerLimit,
        'priceUpperLimit': priceUpperLimit,
        'propertyTypeIds': propertyTypeIds,
        'pageSize': loaditemsCount,
        'pageNo': pageNumber,
        'checkInDate': checkInDate,
        'checkOutDate': checkOutDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalCount''',
      ));
}

class AllPropertiesAPICall {
  Future<ApiCallResponse> call() async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'All Properties API',
      apiUrl: '${baseUrl}/v1/allProperties',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? propertyData(dynamic response) => getJsonField(
        response,
        r'''$.propertyBriefs''',
        true,
      ) as List?;
}

class HostPropertyListsCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? status,
    int? pageNo,
    int? pageSize,
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Host Property Lists',
      apiUrl: '${baseUrl}/v1/propertiesByStatusOfUserId',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'userId': userId,
        'status': status,
        'pageNo': pageNo,
        'pageSize': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? propertyData(dynamic response) => getJsonField(
        response,
        r'''$.propertyBriefs''',
        true,
      ) as List?;
  List? statusPropertyBriefs(dynamic response) => getJsonField(
        response,
        r'''$.statusPropertyBriefs''',
        true,
      ) as List?;
  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalCount''',
      ));
  int? pendingPropertiesCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pendingPropertiesCount''',
      ));
  int? approvedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.approvedPropertiesCount''',
      ));
  int? rejectedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.rejectedPropertiesCount''',
      ));
  int? blockedPropertiesCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.blockedPropertiesCount''',
      ));
  int? lastPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.lastPage''',
      ));
}

class PropertyListingsCall {
  Future<ApiCallResponse> call({
    int? pageLoadItemsCount,
    int? pageNoCount,
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Property Listings',
      apiUrl: '${baseUrl}/v1/pagedProperties',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'pageSize': pageLoadItemsCount,
        'pageNo': pageNoCount,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? propertyListingListData(dynamic response) => getJsonField(
        response,
        r'''$.propertyBriefs''',
        true,
      ) as List?;
  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalCount''',
      ));
  int? pageSize(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageSize''',
      ));
  int? currentPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.currentPage''',
      ));
  int? lastPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.lastPage''',
      ));
}

class PropertyDetailsCall {
  Future<ApiCallResponse> call({
    int? propertyId,
    String? bookingId = '',
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Property Details',
      apiUrl: '${baseUrl}/v1/propertyById',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'propertyId': propertyId,
        'bookingId': bookingId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? propertyId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.propertyId''',
      ));
  int? propertyTypeId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.propertyTypeId''',
      ));
  int? totalGuests(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalGuests''',
      ));
  int? bedrooms(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.bedrooms''',
      ));
  int? bathRooms(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalWashrooms''',
      ));
  int? beds(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.beds''',
      ));
  String? availableFrom(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.availableFrom''',
      ));
  String? plotNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.plotNo''',
      ));
  String? street(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.street''',
      ));
  String? landmark(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.landmark''',
      ));
  String? locality(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.locality''',
      ));
  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.city''',
      ));
  String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
  String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.country''',
      ));
  String? zipcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.zipcode''',
      ));
  String? coordinates(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.coordinates''',
      ));
  double? totalPrice(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.totalPrice''',
      ));
  String? imgesUrls(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imageURLs''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? desc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  bool? sharedBookingAllowed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.sharedBookingsAllowed''',
      ));
  int? sharedWashrooms(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sharedWashrooms''',
      ));
  int? guestsPerRoom(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.guestsPerRoom''',
      ));
  String? propertyType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.propertyType''',
      ));
  double? pricePerRoom(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.pricePerRoom''',
      ));
  String? partiallyBookedDates(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.partialBookedDates''',
      ));
  int? taxPercent(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.taxPercent''',
      ));
}

class AdminListingCall {
  Future<ApiCallResponse> call({
    int? pageNo,
    int? pageSize,
    int? status,
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Listing',
      apiUrl: '${baseUrl}/v1/adminProperties',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'pageNo': pageNo,
        'pageSize': pageSize,
        'status': status,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? pendingPropertiesCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pendingPropertiesCount''',
      ));
  int? approvedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.approvedPropertiesCount''',
      ));
  int? rejectedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.rejectedPropertiesCount''',
      ));
  int? blockedPropertiesCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.blockedPropertiesCount''',
      ));
  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalCount''',
      ));
  int? currentPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.currentPage''',
      ));
  int? lastPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.lastPage''',
      ));
}

class PMInternalPropertyFullViewCall {
  Future<ApiCallResponse> call({
    int? propertyId,
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'PM Internal Property Full View',
      apiUrl: '${baseUrl}/v1/propertyViewAndStatusById',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'propertyId': propertyId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InternalHostDBPropertyFullViewCall {
  Future<ApiCallResponse> call({
    int? propertyId,
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Internal Host DB Property Full View',
      apiUrl: '${baseUrl}/v1/propertyViewAndStatusById',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'propertyId': propertyId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchCitiesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SearchCities',
      apiUrl: '${baseUrl}/v1/getCities',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchLocalitiesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SearchLocalities',
      apiUrl: '${baseUrl}/v1/getLocalities',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdminLRFullViewCall {
  Future<ApiCallResponse> call({
    String? articleId = '',
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin LR Full View',
      apiUrl: '${baseUrl}/v1/externalPropertyById',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'articleId': articleId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? file(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fileURLs''',
      ));
}

class AdminLRListingCall {
  Future<ApiCallResponse> call({
    int? status,
    int? pageNo,
    int? pageSize,
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin LR Listing',
      apiUrl: '${baseUrl}/v1/adminExternalProperties',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'status': status,
        'pageNo': pageNo,
        'pageSize': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalCount''',
      ));
  int? ongoingPropertiesCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ongoingPropertiesCount''',
      ));
  int? blockedPropertiesCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.blockedPropertiesCount''',
      ));
  int? rejectedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.rejectedPropertiesCount''',
      ));
  int? approvedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.approvedPropertiesCount''',
      ));
  int? pendingPropertiesCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pendingPropertiesCount''',
      ));
  int? assignedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.assignedPropertiesCount''',
      ));
}

class ExternalHostDashBoardListingCall {
  Future<ApiCallResponse> call({
    int? status,
    int? userId,
    int? pageNo,
    int? pageSize,
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ExternalHostDashBoardListing',
      apiUrl: '${baseUrl}/v1/externalPropertiesByStatusOfUserId',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'status': status,
        'userId': userId,
        'pageNo': pageNo,
        'pageSize': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalCount''',
      ));
  int? ongoingPropertiesCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ongoingPropertiesCount''',
      ));
  int? assignedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.assignedPropertiesCount''',
      ));
  int? blockedPropertiesCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.blockedPropertiesCount''',
      ));
  int? rejectedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.rejectedPropertiesCount''',
      ));
  int? approvedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.approvedPropertiesCount''',
      ));
  int? pendingPropertiesCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pendingPropertiesCount''',
      ));
}

class ExternalHostDashboardFullViewCall {
  Future<ApiCallResponse> call({
    String? articleId = '',
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'External Host Dashboard Full View',
      apiUrl: '${baseUrl}/v1/externalPropertyById',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'articleId': articleId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PropertyListingWithDatesCall {
  Future<ApiCallResponse> call({
    int? pageSize,
    int? pageNo,
  }) async {
    final baseUrl = MicroserviceAvailabilityAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Property Listing With Dates',
      apiUrl: '${baseUrl}/v1/pagedPropertiesWithDates',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'pageSize': pageSize,
        'pageNo': pageNo,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Microservice Availability APIs Group Code

/// Start Microservice Booking APIs Group Code

class MicroserviceBookingAPIsGroup {
  static String getBaseUrl() =>
      'https://hospitality-dev.demo.sidglobal.cloud/luxuryhomes-dev/lh-booking';
  static Map<String, String> headers = {};
  static ViewBookingDetailsCall viewBookingDetailsCall =
      ViewBookingDetailsCall();
  static UserTripsCall userTripsCall = UserTripsCall();
  static TripsDetailCall tripsDetailCall = TripsDetailCall();
}

class ViewBookingDetailsCall {
  Future<ApiCallResponse> call({
    String? bookingId = '',
  }) async {
    final baseUrl = MicroserviceBookingAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'View Booking Details',
      apiUrl: '${baseUrl}/v1/bookingFullDetailsById',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'bookingId': bookingId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? entirePropertyBooking(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.entirePropertyBooking''',
      ));
  String? bookingDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingDate''',
      ));
  String? checkInDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.checkInDate''',
      ));
  String? checkOutDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.checkOutDate''',
      ));
  dynamic cancelledDate(dynamic response) => getJsonField(
        response,
        r'''$.cancelledDate''',
      );
  bool? isSharedAllowed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.sharedBookingsAllowed''',
      ));
}

class UserTripsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final baseUrl = MicroserviceBookingAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'User Trips',
      apiUrl: '${baseUrl}/v1/bookingsByUserId',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? inProgress(dynamic response) => getJsonField(
        response,
        r'''$[0].details''',
        true,
      ) as List?;
  List? upComing(dynamic response) => getJsonField(
        response,
        r'''$[1].details''',
        true,
      ) as List?;
  List? completed(dynamic response) => getJsonField(
        response,
        r'''$[2].details''',
        true,
      ) as List?;
  dynamic cancelled(dynamic response) => getJsonField(
        response,
        r'''$[3].details''',
      );
}

class TripsDetailCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? bookingStatus,
    int? pageNo,
    int? pageSize,
  }) async {
    final baseUrl = MicroserviceBookingAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Trips Detail',
      apiUrl: '${baseUrl}/v1/bookingsOfUserByStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
        'bookingStatus': bookingStatus,
        'pageNo': pageNo,
        'pageSize': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? bookingsList(dynamic response) => getJsonField(
        response,
        r'''$.bookingsList''',
        true,
      ) as List?;
  String? bookingRefId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].bookingRefId''',
      ));
  String? bookingId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].bookingId''',
      ));
  String? checkInDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].checkInDate''',
      ));
  String? checkOutDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].checkOutDate''',
      ));
  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.bookingsList[:].userId''',
      ));
  int? propertyId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.bookingsList[:].propertyId''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].title''',
      ));
  String? ownerUserName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].ownerUserName''',
      ));
  String? ownerPhoneNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].ownerPhoneNumber''',
      ));
  String? propertyImages(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].propertyImages''',
      ));
  String? locality(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].locality''',
      ));
  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].city''',
      ));
  String? propertyType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].propertyType''',
      ));
  bool? modifiable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.bookingsList[:].modifiable''',
      ));
  String? transactionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].transactionId''',
      ));
  String? bookingDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bookingsList[:].bookingDate''',
      ));
  int? totalAmount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.bookingsList[:].totalAmount''',
      ));
  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalCount''',
      ));
  int? currentPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.currentPage''',
      ));
  int? pageSize(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageSize''',
      ));
  int? lastPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.lastPage''',
      ));
}

/// End Microservice Booking APIs Group Code

/// Start Microservice Rating Review APIs Group Code

class MicroserviceRatingReviewAPIsGroup {
  static String getBaseUrl() =>
      'https://hospitality-dev.demo.sidglobal.cloud/luxuryhomes-dev/lh-review-ratings';
  static Map<String, String> headers = {};
  static ReviewsRatingsCall reviewsRatingsCall = ReviewsRatingsCall();
}

class ReviewsRatingsCall {
  Future<ApiCallResponse> call({
    String? propertyId = '',
    int? pageNo,
    int? pageSize,
  }) async {
    final baseUrl = MicroserviceRatingReviewAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Reviews Ratings',
      apiUrl: '${baseUrl}/v1/pagedRatingReviews',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'propertyId': propertyId,
        'pageNo': pageNo,
        'pageSize': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Microservice Rating Review APIs Group Code

/// Start Microservice ExternalHost Group Code

class MicroserviceExternalHostGroup {
  static String getBaseUrl() =>
      'https://hospitality-dev.demo.sidglobal.cloud/luxuryhomes-dev/lh-external-property';
  static Map<String, String> headers = {};
  static ExHostPropertyFullViewCall exHostPropertyFullViewCall =
      ExHostPropertyFullViewCall();
  static ExHostDashboardCall exHostDashboardCall = ExHostDashboardCall();
  static AdminLeaseRequestDashboardCall adminLeaseRequestDashboardCall =
      AdminLeaseRequestDashboardCall();
  static AdminLeaseRequestPropertyDetailCall
      adminLeaseRequestPropertyDetailCall =
      AdminLeaseRequestPropertyDetailCall();
  static PIDashboardCall pIDashboardCall = PIDashboardCall();
  static PIATDashboardPropertyDetailViewCall
      pIATDashboardPropertyDetailViewCall =
      PIATDashboardPropertyDetailViewCall();
  static ATDashboardCall aTDashboardCall = ATDashboardCall();
}

class ExHostPropertyFullViewCall {
  Future<ApiCallResponse> call({
    String? articleId = '',
  }) async {
    final baseUrl = MicroserviceExternalHostGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Ex Host Property Full View',
      apiUrl: '${baseUrl}/v1/getPropertyById',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'articleId': articleId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ExHostDashboardCall {
  Future<ApiCallResponse> call({
    int? status,
    int? userId,
    int? pageNo,
    int? pageSize,
  }) async {
    final baseUrl = MicroserviceExternalHostGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Ex Host Dashboard',
      apiUrl: '${baseUrl}/v1/getUserPropertiesByStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'status': status,
        'userId': userId,
        'pageNo': pageNo,
        'pageSize': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? pendingPropertiesCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pendingPropertiesCount''',
      ));
  int? approvedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.approvedPropertiesCount''',
      ));
  int? lastPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.lastPage''',
      ));
  int? rejectedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.rejectedPropertiesCount''',
      ));
  int? assignedPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.assignedPropertiesCount''',
      ));
  int? inProgressPropertiesCount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.inProgressPropertiesCount''',
      ));
  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalCount''',
      ));
  int? pageSize(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageSize''',
      ));
  int? currentPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.currentPage''',
      ));
}

class AdminLeaseRequestDashboardCall {
  Future<ApiCallResponse> call({
    int? status,
    int? pageNo,
    int? pageSize,
  }) async {
    final baseUrl = MicroserviceExternalHostGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Lease Request dashboard',
      apiUrl: '${baseUrl}/v1/getPropertiesForAdmin',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'status': status,
        'pageNo': pageNo,
        'pageSize': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalCount''',
      ));
}

class AdminLeaseRequestPropertyDetailCall {
  Future<ApiCallResponse> call({
    String? articleId = '',
  }) async {
    final baseUrl = MicroserviceExternalHostGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Lease Request Property Detail',
      apiUrl: '${baseUrl}/v1/getPropertyById',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'articleId': articleId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PIDashboardCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? taskPhase,
    int? status,
    int? pageNo,
    int? pageSize,
  }) async {
    final baseUrl = MicroserviceExternalHostGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'PI dashboard',
      apiUrl: '${baseUrl}/v1/getUserPhaseWiseReviewsByStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
        'pageNo': pageNo,
        'pageSize': pageSize,
        'taskPhase': taskPhase,
        'status': status,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalCount''',
      ));
  int? pageSize(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageSize''',
      ));
  int? currentPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.currentPage''',
      ));
  int? lastPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.lastPage''',
      ));
  int? assignedTasksCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.assignedTasksCount''',
      ));
  int? acceptedTasksCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.acceptedTasksCount''',
      ));
  int? completedTasksCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.completedTasksCount''',
      ));
  int? rejectedTasksCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.rejectedTasksCount''',
      ));
}

class PIATDashboardPropertyDetailViewCall {
  Future<ApiCallResponse> call({
    int? reviewId,
  }) async {
    final baseUrl = MicroserviceExternalHostGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'PI AT Dashboard Property detail view',
      apiUrl: '${baseUrl}/v1/getPropertyDetailsByReviewId',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'reviewId': reviewId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? priority(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.priority''',
      ));
}

class ATDashboardCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? taskPhase,
    int? status,
    int? pageNo,
    int? pageSize,
  }) async {
    final baseUrl = MicroserviceExternalHostGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'AT dashboard',
      apiUrl: '${baseUrl}/v1/getUserPhaseWiseReviewsByStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
        'taskPhase': taskPhase,
        'status': status,
        'pageNo': pageNo,
        'pageSize': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalCount''',
      ));
  int? pageSize(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageSize''',
      ));
  int? currentPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.currentPage''',
      ));
  int? lastPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.lastPage''',
      ));
  int? assignedTasksCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.assignedTasksCount''',
      ));
  int? acceptedTasksCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.acceptedTasksCount''',
      ));
  int? completedTasksCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.completedTasksCount''',
      ));
  int? rejectedTasksCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.rejectedTasksCount''',
      ));
}

/// End Microservice ExternalHost Group Code

class AllCountiesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'All Counties',
      apiUrl: 'https://restcountries.com/v3.1/all',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthTokenAPICall {
  static Future<ApiCallResponse> call({
    String? clientId = '',
    String? clientSecret = '',
    String? grantType = '',
    String? username = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Auth Token API',
      apiUrl: 'https://hospitality-dev.demo.sidglobal.cloud/o/oauth2/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'client_id': clientId,
        'client_secret': clientSecret,
        'grant_type': grantType,
        'username': username,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RefreshTokenAPICall {
  static Future<ApiCallResponse> call({
    String? clientId = '',
    String? clientSecret = '',
    String? grantType = '',
    String? refreshToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Refresh Token API',
      apiUrl: 'https://hospitality-dev.demo.sidglobal.cloud/o/oauth2/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'client_id': clientId,
        'client_secret': clientSecret,
        'grant_type': grantType,
        'refresh_token': refreshToken,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegistrationAPICall {
  static Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? dateOfBirth = '',
    String? phoneNumber = '',
    String? emailAddress = '',
    bool? tAndC = true,
    String? pincode = '',
    String? country = '',
    String? state = '',
    String? city = '',
    String? locality = '',
    String? street = '',
  }) async {
    final ffApiRequestBody = '''
{
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "dateOfBirth": "${dateOfBirth}",
  "phoneNumber": "${phoneNumber}",
  "emailAddress": "${emailAddress}",
  "pincode": "${pincode}",
  "country": "${country}",
  "state": "${state}",
  "city": "${city}",
  "locality": "${locality}",
  "street": "${street}",
  "tAndC": ${tAndC}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registration API',
      apiUrl:
          'https://hospitality-dev.demo.sidglobal.cloud/o/vZ/v1.0/registration',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ForgotPasswordAPICall {
  static Future<ApiCallResponse> call({
    String? emailAddress = '',
  }) async {
    final ffApiRequestBody = '''
{
  "emailAddress": "${emailAddress}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Forgot Password API',
      apiUrl:
          'https://hospitality-dev.demo.sidglobal.cloud/o/vZ/v1.0/forgotPassword',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadDocumentsCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? fileName,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Upload Documents',
      apiUrl:
          'https://hospitality-dev.demo.sidglobal.cloud/o/headless-delivery/v1.0/sites/20119/documents',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'multipart/form-data',
        'Authorization': 'Basic dGVzdEBsaWZlcmF5LmNvbTp0ZXN0',
      },
      params: {
        'fileName': fileName,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogOutCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "refreshToken": "${refreshToken}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LogOut',
      apiUrl: 'https://hospitality-dev.demo.sidglobal.cloud/o/vZ/v1.0/revoke',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDataFromPinCodeCall {
  static Future<ApiCallResponse> call({
    String? address = '',
    String? key = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDataFromPinCode',
      apiUrl: 'https://maps.googleapis.com/maps/api/geocode/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'address': address,
        'key': key,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? postalCodeLocalities(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].postcode_localities''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? longNames(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].address_components[:].long_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? types(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].address_components[:].types[:]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static List? results(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      ) as List?;
  static List<String>? subLocalityLevel2(dynamic response) => (getJsonField(
        response,
        r'''$.results[*].address_components[:].types[2]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? allDetails(dynamic response) => (getJsonField(
        response,
        r'''$.results[*].address_components[:].types[0]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
