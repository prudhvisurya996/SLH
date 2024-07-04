import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<String> getRegionData(List<dynamic>? regionResponse) {
  List<String> countries = [];

  regionResponse = jsonDecode(jsonEncode(regionResponse));

  if (regionResponse!.length > 0) {
    var regions = [];
    regions = regionResponse.map((e) {
      var suffixes = e['idd']['suffixes'];
      bool isArray = false;
      if (suffixes.runtimeType.toString().toLowerCase().contains('list')) {
        isArray = true;
      }

      return "${e['name']['common']} (${e['idd']['root']}${isArray ? e['idd']['suffixes'][0] : e['idd']['suffixes']}" +
          ")"
              .replaceAll('[', '')
              .replaceAll(']', '')
              .replaceAll('[', '')
              .replaceAll(']', '');
    }).toList();

    countries = regions as List<String>;
    countries.sort();
  }

  return countries;
}

dynamic collectExHostPropertyDetails(
  String? title,
  String? description,
  String? country,
  String? plotNo,
  String? street,
  String? landmark,
  String? locality,
  String? city,
  String? state,
  String? zipcode,
  double? chargePerMonth,
  String? availableFrom,
  String? propertyTypeId,
  List<int>? amentyIds,
  String? propertySubTypeId,
  String? availableTo,
  bool? willingToLease,
) {
  var data = {
    "Title": title,
    "Description": description,
    "WillingToLease": willingToLease,
    "Address": {
      "Country": country,
      "PlotNo": plotNo,
      "Street": street,
      "Landmark": landmark,
      "Locality": locality,
      "City": city,
      "State": state,
      "Zipcode": zipcode
    },
    "ChargePerMonth": chargePerMonth,
    "AvailableFrom": availableFrom,
    "AvailableTo": availableTo,
    "propertyTypeId": propertyTypeId,
    "propertySubTypeId": propertySubTypeId,
    "amentyIds": amentyIds
  };

  print(data);
  return data;
}

dynamic collectExHostIdentityDetails(
  int? folderId,
  String? govId,
  String? propDoc,
  String? articleId,
) {
  var data = {
    "folderId": folderId,
    "govId": govId,
    "propDoc": propDoc,
    "articleId": articleId
  };

  return data;
}

List<String> getRegionNamesOnly(List<dynamic>? apiResponse) {
  List<String> resp = [];

  resp = apiResponse!.map((e) => "${e['name']['common']}").toList()
      as List<String>;

  return resp;
}

dynamic collectPIFeedbackDetails(
  String? startInspectionDate,
  String? inspectorName,
  String? propertyTitle,
  String? country,
  String? flathouseName,
  String? propertyType,
  String? flatNo,
  String? landmark,
  String? streetAddress,
  String? locality,
  String? city,
  String? state,
  String? pincode,
  String? propertySize,
  String? bedrooms,
  String? bathrooms,
  String? otherRooms,
  String? isPersonalDocMatched,
  String? isPropertyDocMatched,
  String? roofCondition,
  String? windpwAndDoors,
  String? drivewayAndSidewalks,
  String? buildingPainting,
  String? flooringCondition,
  String? fireExits,
  String? wallsAndSiding,
  String? foundationAndStructure,
  String? drainageSystem,
  String? buildingCondition,
  String? lift,
  String? interiorFlooring,
  String? wallsAndCeiling,
  String? interiorDoorsAndWindows,
  String? plumbingSystem,
  String? electricalSystem,
  String? bathroomFixtures,
  String? hVACsystem,
  String? customizableSpace,
  int? balconies,
  int? doors,
  int? fans,
  int? lights,
  int? washrooms,
  int? washBasins,
  int? showers,
  String? smokeDetectors,
  String? co2Detectors,
  String? fireExtinguishers,
  String? securityGuard,
  String? handrailsAndStaircases,
  String? digitalDoorLock,
  String? cctv,
  String? kitchenAppliances,
  String? heatingAndACsystems,
  String? parkingSpace,
  String? playGroundOrRecreationalAreas,
  String? laundryFacilities,
  String? internetAccess,
  String? petFriendly,
  String? poolAccess,
  String? propertyLocationFallsUnder,
  String? propertyAreaLocationType,
  String? propertyMaintainence,
  String? transportationFeasibility,
  String? pricingReasonableToTheArea,
  String? localMarketRentPrice,
  String? publicTransportType,
  String? legalIssues,
  String? businessFeasibility,
  String? additionalComments,
  String? formSubmittedDate,
) {
  var feedback = {
    "Inspection Started Date": startInspectionDate ?? "",
    "Property inspector name": inspectorName ?? "",
    "Property Information": {
      "Property Title": propertyTitle ?? "",
      "Property Address": {
        "Country": country ?? "",
        "Flat,house name": flathouseName ?? "",
        "Property Type": propertyType ?? "",
        "Flat/House/Villa number": flatNo ?? "",
        "Nearby landmark": landmark ?? "",
        "Strreet address": streetAddress ?? "",
        "Locality": locality ?? "",
        "City/Town": city ?? "",
        "State": state ?? "",
        "PIN Code": pincode ?? "",
      },
      "Property Size": propertySize ?? "",
      "Number of bedrooms": bedrooms ?? "",
      "Number of bathrooms": bathrooms ?? "",
      "Other rooms": otherRooms ?? "",
    },
    "Document Verification": {
      "User personal document": isPersonalDocMatched ?? "",
      "Property document": isPropertyDocMatched,
    },
    "Exterior Inspection": {
      "Roof Condition": roofCondition ?? "",
      "Windows and Doors": windpwAndDoors ?? "",
      "Driveway and sidewalks": drivewayAndSidewalks ?? "",
      "Building painting condition": buildingPainting ?? "",
      "Flooring condition": flooringCondition ?? "",
      "Fire exits": fireExits ?? "",
      "Walls and Siding": wallsAndSiding ?? "",
      "Foundation and structure": foundationAndStructure ?? "",
      "Drainage system": drainageSystem ?? "",
      "Building condition": buildingCondition ?? "",
      "Lift/Staircase": lift ?? "",
    },
    "Interior Inspection": {
      "Flooring": interiorFlooring ?? "",
      "Doors & Windows": interiorDoorsAndWindows ?? "",
      "Plumbing system": plumbingSystem ?? "",
      "HVAC system": hVACsystem ?? "",
      "Walls and ceilings": wallsAndCeiling ?? "",
      "Electrical system": electricalSystem ?? "",
      "Bathroom fixtures": bathroomFixtures ?? "",
      "Customizable space": customizableSpace ?? "",
      "No. of balconies": balconies ?? "",
      "No. of doors": doors ?? "",
      "No. of fans": fans ?? "",
      "No. of lights": lights ?? "",
      "No. of washrooms": washrooms ?? "",
      "No. of washbasins": washBasins ?? "",
      "No. of showers": showers ?? "",
    },
    "Safety and Compliances": {
      "Smoke detectors": smokeDetectors ?? "",
      "Carbon monoxide detectors": co2Detectors ?? "",
      "Fire extinguishers": fireExtinguishers ?? "",
      "Handrails and staircases": handrailsAndStaircases ?? "",
      "Security guard": securityGuard ?? "",
      "Digital door lock": digitalDoorLock ?? "",
      "CCTV": cctv ?? "",
    },
    "Amenities": {
      "Kitchen appliances": kitchenAppliances ?? "",
      "Laundry facilities": laundryFacilities ?? "",
      "Heating and air conditioning systems": heatingAndACsystems ?? "",
      "Internet access": internetAccess ?? "",
      "Parking space": parkingSpace ?? "",
      "Pet friendly": petFriendly ?? "",
      "Playground or recreational areas": playGroundOrRecreationalAreas ?? "",
      "Pool access": poolAccess ?? "",
    },
    "Business Compliances": {
      "Property location falls under": propertyLocationFallsUnder ?? "",
      "Property maintenance": propertyMaintainence ?? "",
      "Transportation feasibility": transportationFeasibility ?? "",
      "Pricing reasonable to the area": pricingReasonableToTheArea ?? "",
      "Local market rent price": localMarketRentPrice ?? "",
      "Property area location type": propertyAreaLocationType ?? "",
      "Public transport type/frequency": publicTransportType ?? "",
      "Legal issues": legalIssues ?? "",
      "Business feasibility": businessFeasibility ?? "",
    },
    "Additional Comments": additionalComments ?? "",
    "Form Submitted Date": formSubmittedDate
  };

  return feedback;
}

DateTime? getPastDate() {
  var date = DateTime.now();
  var pastDate = DateTime(date.year - 12, date.month, date.day);
  return pastDate;
}

bool? propertyVisibility(
  dynamic currentData,
  dynamic appStateData,
) {
  if (appStateData!['categoryId'] != null) {
    print('appstate data : ${appStateData!['categoryId']}');
    print('current data : ${currentData!['categoryId']}');
    return currentData!['categoryId'] == appStateData!['categoryId'];
    ;
  } else {
    return false;
  }
}

String? getIcon(
  String? baseUrl,
  String? iconPath,
) {
  String url = baseUrl! + iconPath!;

  return url;
}

String? getRegion(String? streetAddress) {
  String region = "";

  if (streetAddress! != "") {
    List data = streetAddress.split(',');
    region = data.last().trim();

    print("My region is : $region");
  }

  return region.trim();
}

String? getCountry(String? streetaddress) {
  String country;
  List<String> data = streetaddress!.split(',');
  country = data[data.length - 1];
  return country.trim();
}

double? getLat(LatLng? latLang) {
  // get only  latitude in double generate code
  if (latLang != null) {
    return latLang.latitude;
  } else {
    return 0;
  }
}

double? getLang(LatLng? latLang) {
  if (latLang != null) {
    return latLang.longitude;
  } else {
    return 0;
  }
}

List<dynamic> getDocfileKeyValue(
  FFUploadedFile? govIdfile,
  String? govId,
  FFUploadedFile? propertyFile,
  String? propDoc,
) {
  List getNames = [];

  if (govIdfile != null) {
    String? fileName = govIdfile.name;
    getNames.add({"key": govId, "fileName": fileName});
  }

  if (propertyFile != null) {
    String? fileName = propertyFile.name;
    getNames.add({"key": propDoc, "fileName": fileName});
  }

  return getNames;
}

double getPricePercentage(
  double roomPrice,
  double taxPercentage,
) {
  return (roomPrice) * (taxPercentage / 100);
}

double getPriceTotal(
  double roomPrice,
  double percentagePrice,
) {
  return roomPrice + percentagePrice;
}

double? toDouble(String? price) {
  // string to double generate code
  if (price == null) {
    return 0;
  }
  try {
    return double.parse(price);
  } catch (e) {
    return 0;
  }
}

dynamic collectPropertyDetails(
  String? title,
  String? description,
  LatLng? coordinates,
  String? country,
  String? plotNo,
  String? street,
  String? landmark,
  String? locality,
  String? city,
  String? state,
  String? zipcode,
  int? guestsPerRoom,
  int? bedrooms,
  int? bedsPerRoom,
  int? bathroomsPerRoom,
  double? roomPricePerNight,
  String? availableFrom,
  int? propertyTypeId,
  List<int>? amentyIds,
  bool? sharedBookingsAllowed,
  int? sharedWashrooms,
) {
  var data = {
    "title": title,
    "description": description,
    "coordinates": {
      "latitude": "${coordinates!.latitude}",
      "longitude": "${coordinates.longitude}"
    },
    "address": {
      "country": country,
      "plotNo": plotNo,
      "street": street,
      "landmark": landmark,
      "locality": locality,
      "city": city,
      "state": state,
      "zipcode": zipcode
    },
    "bedrooms": bedrooms,
    "guestsPerRoom": guestsPerRoom,
    "bathroomsPerRoom": bathroomsPerRoom,
    "bedsPerRoom": bedsPerRoom,
    "sharedWashrooms": sharedWashrooms,
    "roomPricePerNight": roomPricePerNight,
    "sharedBookingsAllowed": sharedBookingsAllowed,
    "availableFrom": availableFrom,
    "propertyTypeId": propertyTypeId,
    "amentyIds": amentyIds
  };
  return data;
}

List<dynamic> getFileNames(List<FFUploadedFile>? files) {
  List getNames = [];
  if (files!.length > 0) {
    for (int index = 0; index < files.length; index++) {
      String? fileName = files[index].name;
      getNames.add({"key": "file${index + 1}", "fileName": fileName});
    }
  }

  return getNames;
}

List<FFUploadedFile> refillFiles(List<FFUploadedFile> files) {
  List<FFUploadedFile> myFiles = [];
  if (files.length > 0) {
    for (int index = 0; index < 10; index++) {
      if (index < files.length) {
        myFiles = files;
      } else {
        myFiles.add(FFUploadedFile());
      }
    }
  }

  return myFiles;
}

String getFileExtensions(FFUploadedFile? uploadingFile) {
  List<String> parts = uploadingFile!.name!.split('.');
  if (parts.length > 1) {
    return parts.last; // Last part after splitting by '.'
  } else {
    return 'No extension found';
  }
}

List<String>? listDataConversion(String? data) {
  var decodedData = json.decode(data!);

  // print("Before $decodedData");

  // print(":Rehaman ${decodedData.runtimeType}");
  List<String>? stringList = decodedData.whereType<String>().toList();

  // print("After $stringList");

  return stringList!;
}

List<String>? initImg(
  List<String>? listImages,
  String? baseUrl,
) {
  List<String>? concatImgs = listImages!.map((e) => baseUrl! + e).toList();

  return concatImgs;
}

List<dynamic>? listMapConversion(String? amenitiesData) {
  var decodeData = json.decode(amenitiesData!);

  // List<Map<String, dynamic>> mappedData =
  //     decodeData.whereType<String, dynamic>().toList();

  return decodeData;
}

String? getImage(
  String? baseUrl,
  String? imgPath,
) {
  String url = baseUrl! + imgPath!;

  return url;
}

String listTostrConversion(List<int> listofItems) {
  String items = listofItems.join(',');
  return items;
}

double getPrice(
  int nightStayCount,
  double roomPrice,
  int roomsCount,
) {
  return nightStayCount * roomPrice * roomsCount;
}

String? getStateValue(String? address) {
  List<String> spData = address!.split(',');

  String state = spData[spData.length - 2].trim();

  List sub = state.split(' ');
  late int removeVal;

  sub.forEach((e) {
    print(e.runtimeType);

    bool isRemovingVal = false;

    try {
      int i = int.parse(e);
      print(i);
      isRemovingVal = true;
      if (isRemovingVal) {
        removeVal = i;
      }
    } catch (e) {}
  });

  try {
    sub.remove("$removeVal");
  } catch (e) {}

  return sub.join(" ");
}

int incrementOne(int current) {
  return current + 1;
}

String? showErrorMsg(
  dynamic body,
  int? statuscode,
) {
  String msg = "Someting went wrong please try again";

  switch (statuscode) {
    case 401:
      msg =
          "Unauthorised user. Could you kindly log in again for access, if you are authorised to host a property.";
      break;

    case 500:
      var decode = json.decode(body);

      try {
        if (decode != null) {
          if (body['message'] != "") {
            msg = body['message'];
          }
        }
      } catch (e) {
        msg = e.toString();
      }
      break;

    default:
      msg = "Someting went wrong please try again";
  }

  return msg;
}

String? removeCountryCode(String mobileNo) {
  String result = mobileNo.substring(3);
  return result;
}

dynamic getLocationAddress(String? address) {
  Map getStateAndPincode(String? address) {
    var result = {};
    List<String> spData = address!.split(',');

    String state = spData[spData.length - 2].trim();

    List sub = state.split(' ');
    late int removeVal;

    int zipCode = 0;

    sub.forEach((e) {
      bool isRemovingVal = false;

      try {
        int i = int.parse(e);
        if (i.runtimeType == int) {
          zipCode = i;
        }
        isRemovingVal = true;
        if (isRemovingVal) {
          removeVal = i;
        }
      } catch (e) {}
    });
    try {
      sub.remove("$removeVal");
    } catch (e) {}

    return {'state': sub.join(" "), 'zipCode': zipCode};
  }

  List<String> data = address!.split(',');

  var addressLength = data.length;
  print("addressLength : $addressLength");

  var result = {};

  if (addressLength == 1) {
    result['country'] = data[data.length - 1].trim();
    result['state'] = '';
    result['city'] = '';
    result['locality'] = '';
    result['streetAddress'] = '';
    result['zipcode'] = '';
  } else if (addressLength == 2) {
    result['country'] = data[data.length - 1].trim();
    result['state'] = getStateAndPincode(address)['state'].trim();
    result['city'] = '';
    result['locality'] = '';
    result['streetAddress'] = '';
    result['zipcode'] = '';
  } else if (addressLength == 3) {
    result['country'] = data[data.length - 1].trim();
    result['state'] = getStateAndPincode(address)['state'].trim();
    result['city'] = data[data.length - 3].trim();
    result['locality'] = '';
    result['streetAddress'] = '';
    result['zipcode'] = '';
  } else if (addressLength == 4) {
    result['country'] = data[data.length - 1].trim();
    result['state'] = getStateAndPincode(address)['state'].trim();
    result['city'] = data[data.length - 3].trim();
    result['locality'] = data[data.length - 4].trim();
    result['streetAddress'] = '';
    result['zipcode'] = '';
  } else if (addressLength > 4) {
    result['country'] = data[data.length - 1].trim();
    result['state'] = getStateAndPincode(address)['state'].trim();
    result['city'] = data[data.length - 3].trim();
    result['locality'] = data[data.length - 4].trim();
    result['streetAddress'] =
        data.sublist(0, data.length - 4).join(', ').trim();
    result['zipcode'] = getStateAndPincode(address)['zipCode'].trim();
  }
  print(result);
  return result;
}

bool? zeroEmptyNull(String? check) {
  if (check == null) {
    return true;
  } else if (check.isEmpty) {
    return true;
  } else if (check == '0') {
    return true;
  } else {
    return false;
  }
}

DateTime convertStringToDatetime(String avilableFromDate) {
  DateTime tempDate = new DateFormat("dd-MM-yyyy").parse(avilableFromDate);
  return tempDate;
}

int daysCalculation(List<DateTime>? selectedFromToDates) {
  int days = 0;
  if (selectedFromToDates!.length > 0) {
    Duration difference =
        selectedFromToDates[1].difference(selectedFromToDates[0]);
    days = difference.inDays;
  }
  // print("selected dates: $selectedFromToDates");
  // print("no.of days selected to modify: $days");
  return days;
}

dynamic getDocName(
  List<dynamic>? filesRespData,
  String? keyName,
) {
  // if (filesData != null) {
  //   dynamic files = filesData.where((e) => e['DocType'] == keyName).toList();
  //   print('file urls : $files');
  //   return files;
  // } else {
  //   return null;
  // }

  var result = {};

  if (filesRespData!.length > 0) {
    for (var item in filesRespData) {
      if (item['DocType'].toString().toLowerCase() == keyName!.toLowerCase()) {
        result = item;
      }
    }
  }

  return result;
}

int? toInt(String? valuie) {
  int conv = int.parse("$valuie!");

  return conv;
}

bool? isCancellationAllow(String? checkInDate) {
  bool isBeforeCheckInTime = false;
  if (checkInDate!.isNotEmpty && checkInDate != "" && checkInDate != null) {
    DateTime checkIn = DateTime.parse(checkInDate);

    DateTime beforeCheckInDay =
        DateTime(checkIn.year, checkIn.month, checkIn.day - 1, 11, 59, 59);

    DateTime currentDateTime = DateTime.now();

    if (beforeCheckInDay.isAfter(currentDateTime)) {
      print("Before : $beforeCheckInDay - Current : $currentDateTime");
      isBeforeCheckInTime = true;
    }
  }

  print("User Cancellation : $isBeforeCheckInTime");
  return isBeforeCheckInTime;
}

List<DateTime>? fromToDateConversion(
  String? checkinDate,
  String? checkOutDate,
) {
  List<DateTime> result = [];

  if (checkinDate!.isNotEmpty && checkOutDate!.isNotEmpty) {
    DateTime checkInConv = DateTime.parse(checkinDate);
    DateTime checkOutConv = DateTime.parse(checkOutDate);

    result = [checkInConv, checkOutConv];
  }

  return result;
}

List<dynamic>? listMapConversionEx(dynamic fileURLs) {
  var decodeData = json.decode(fileURLs!);

  // List<Map<String, dynamic>> mappedData =
  //     decodeData.whereType<String, dynamic>().toList();

  print('decode data : $decodeData');

  return decodeData;
}

String? imgToStrConv(String? img) {
  return img!;
}

DateTime? strToDateTimeConversion(String? datetimeValue) {
  return DateTime.parse(datetimeValue!);
}

DateTime? beforeCheckInDate(String? checkInDateValue) {
  DateTime checkInDate = DateTime.parse(checkInDateValue!);

  return DateTime(checkInDate.year, checkInDate.month, checkInDate.day - 1);
}

List<String>? getAmenitieNames(String? amenitiesData) {
  List<String>? amenitiesList = [];

  if (amenitiesData!.isNotEmpty &&
      amenitiesData != null &&
      amenitiesData != "") {
    var decodeData = json.decode(amenitiesData);

    List list = decodeData.map((e) => e['name']).toList();

    List<String>? stringList = list.whereType<String>().toList();

    amenitiesList = stringList;
  }

  return amenitiesList;
}

String? removeEmptySpace(String removeSpace) {
  return removeSpace.trim();
}

bool whiteSpaces(
  String field1,
  String field2,
) {
  RegExp regex = RegExp(r"^\s+$");
  return !(regex.hasMatch(field1) || regex.hasMatch(field2));
}

List<String>? searchResult(
  List<String>? searchList,
  String startingLetter,
) {
  List<String>? filteredList = [];

  // filter list with starting letter
  if (searchList == null || searchList.isEmpty) {
    return null;
  }

  for (var item in searchList) {
    if (item[0].toString().toLowerCase() ==
            startingLetter[0].toString().toLowerCase() &&
        item.toLowerCase().contains(startingLetter.toLowerCase())) {
      filteredList.add(item);
    }
  }

  if (filteredList.isEmpty) {
    return null;
  }

  return filteredList;
}

String? getFilePath(FFUploadedFile? newFile) {
  // Check if newFile is not null and if its newFile property is not null and not empty
  if (newFile != null && newFile.name!.isNotEmpty) {
    // Assuming newFile.newFile is a list, accessing the first element and then its name property
    return newFile.name;
  }

  return null;
}

bool? exHostdaysDiff(
  String? availableFrom,
  String? availableTo,
) {
  DateTime availableFromDate = DateTime.parse(availableFrom!);
  DateTime availableToDate = DateTime.parse(availableTo!);

  int diffDays = availableToDate.difference(availableFromDate).inDays;

  if (diffDays < 365) {
    return false;
  }
  return true;
}

DateTime? exHostAvailabledateSelection(DateTime? availableFrom) {
  DateTime selectAvailableToDate =
      availableFrom!.add(const Duration(days: 365));
  return selectAvailableToDate;
}

String? getCountryFlag(String? countryName) {
  if (countryName == null) {
    return null;
  }
  final countryInfoJson = {
    "Afghanistan": {"dial_code": "+93", "code": "AF"},
    "Aland Islands": {"dial_code": "+358", "code": "AX"},
    "Albania": {"dial_code": "+355", "code": "AL"},
    "Algeria": {"dial_code": "+213", "code": "DZ"},
    "AmericanSamoa": {"dial_code": "+1684", "code": "AS"},
    "Andorra": {"dial_code": "+376", "code": "AD"},
    "Angola": {"dial_code": "+244", "code": "AO"},
    "Anguilla": {"dial_code": "+1264", "code": "AI"},
    "Antarctica": {"dial_code": "+672", "code": "AQ"},
    "Antigua and Barbuda": {"dial_code": "+1268", "code": "AG"},
    "Argentina": {"dial_code": "+54", "code": "AR"},
    "Armenia": {"dial_code": "+374", "code": "AM"},
    "Aruba": {"dial_code": "+297", "code": "AW"},
    "Australia": {"dial_code": "+61", "code": "AU"},
    "Austria": {"dial_code": "+43", "code": "AT"},
    "Azerbaijan": {"dial_code": "+994", "code": "AZ"},
    "Bahamas": {"dial_code": "+1242", "code": "BS"},
    "Bahrain": {"dial_code": "+973", "code": "BH"},
    "Bangladesh": {"dial_code": "+880", "code": "BD"},
    "Barbados": {"dial_code": "+1246", "code": "BB"},
    "Belarus": {"dial_code": "+375", "code": "BY"},
    "Belgium": {"dial_code": "+32", "code": "BE"},
    "Belize": {"dial_code": "+501", "code": "BZ"},
    "Benin": {"dial_code": "+229", "code": "BJ"},
    "Bermuda": {"dial_code": "+1441", "code": "BM"},
    "Bhutan": {"dial_code": "+975", "code": "BT"},
    "Bolivia, Plurinational State of": {"dial_code": "+591", "code": "BO"},
    "Bosnia and Herzegovina": {"dial_code": "+387", "code": "BA"},
    "Botswana": {"dial_code": "+267", "code": "BW"},
    "Brazil": {"dial_code": "+55", "code": "BR"},
    "British Indian Ocean Territory": {"dial_code": "+246", "code": "IO"},
    "Brunei Darussalam": {"dial_code": "+673", "code": "BN"},
    "Bulgaria": {"dial_code": "+359", "code": "BG"},
    "Burkina Faso": {"dial_code": "+226", "code": "BF"},
    "Burundi": {"dial_code": "+257", "code": "BI"},
    "Cambodia": {"dial_code": "+855", "code": "KH"},
    "Cameroon": {"dial_code": "+237", "code": "CM"},
    "Canada": {"dial_code": "+1", "code": "CA"},
    "Cape Verde": {"dial_code": "+238", "code": "CV"},
    "Cayman Islands": {"dial_code": "+ 345", "code": "KY"},
    "Central African Republic": {"dial_code": "+236", "code": "CF"},
    "Chad": {"dial_code": "+235", "code": "TD"},
    "Chile": {"dial_code": "+56", "code": "CL"},
    "China": {"dial_code": "+86", "code": "CN"},
    "Christmas Island": {"dial_code": "+61", "code": "CX"},
    "Cocos (Keeling) Islands": {"dial_code": "+61", "code": "CC"},
    "Colombia": {"dial_code": "+57", "code": "CO"},
    "Comoros": {"dial_code": "+269", "code": "KM"},
    "Congo": {"dial_code": "+242", "code": "CG"},
    "Congo, The Democratic Republic of the Congo": {
      "dial_code": "+243",
      "code": "CD"
    },
    "Cook Islands": {"dial_code": "+682", "code": "CK"},
    "Costa Rica": {"dial_code": "+506", "code": "CR"},
    "Cote d'Ivoire": {"dial_code": "+225", "code": "CI"},
    "Croatia": {"dial_code": "+385", "code": "HR"},
    "Cuba": {"dial_code": "+53", "code": "CU"},
    "Cyprus": {"dial_code": "+357", "code": "CY"},
    "Czech Republic": {"dial_code": "+420", "code": "CZ"},
    "Denmark": {"dial_code": "+45", "code": "DK"},
    "Djibouti": {"dial_code": "+253", "code": "DJ"},
    "Dominica": {"dial_code": "+1767", "code": "DM"},
    "Dominican Republic": {"dial_code": "+1849", "code": "DO"},
    "Ecuador": {"dial_code": "+593", "code": "EC"},
    "Egypt": {"dial_code": "+20", "code": "EG"},
    "El Salvador": {"dial_code": "+503", "code": "SV"},
    "Equatorial Guinea": {"dial_code": "+240", "code": "GQ"},
    "Eritrea": {"dial_code": "+291", "code": "ER"},
    "Estonia": {"dial_code": "+372", "code": "EE"},
    "Ethiopia": {"dial_code": "+251", "code": "ET"},
    "Falkland Islands (Malvinas)": {"dial_code": "+500", "code": "FK"},
    "Faroe Islands": {"dial_code": "+298", "code": "FO"},
    "Fiji": {"dial_code": "+679", "code": "FJ"},
    "Finland": {"dial_code": "+358", "code": "FI"},
    "France": {"dial_code": "+33", "code": "FR"},
    "French Guiana": {"dial_code": "+594", "code": "GF"},
    "French Polynesia": {"dial_code": "+689", "code": "PF"},
    "Gabon": {"dial_code": "+241", "code": "GA"},
    "Gambia": {"dial_code": "+220", "code": "GM"},
    "Georgia": {"dial_code": "+995", "code": "GE"},
    "Germany": {"dial_code": "+49", "code": "DE"},
    "Ghana": {"dial_code": "+233", "code": "GH"},
    "Gibraltar": {"dial_code": "+350", "code": "GI"},
    "Greece": {"dial_code": "+30", "code": "GR"},
    "Greenland": {"dial_code": "+299", "code": "GL"},
    "Grenada": {"dial_code": "+1473", "code": "GD"},
    "Guadeloupe": {"dial_code": "+590", "code": "GP"},
    "Guam": {"dial_code": "+1671", "code": "GU"},
    "Guatemala": {"dial_code": "+502", "code": "GT"},
    "Guernsey": {"dial_code": "+44", "code": "GG"},
    "Guinea": {"dial_code": "+224", "code": "GN"},
    "Guinea-Bissau": {"dial_code": "+245", "code": "GW"},
    "Guyana": {"dial_code": "+595", "code": "GY"},
    "Haiti": {"dial_code": "+509", "code": "HT"},
    "Holy See (Vatican City State)": {"dial_code": "+379", "code": "VA"},
    "Honduras": {"dial_code": "+504", "code": "HN"},
    "Hong Kong": {"dial_code": "+852", "code": "HK"},
    "Hungary": {"dial_code": "+36", "code": "HU"},
    "Iceland": {"dial_code": "+354", "code": "IS"},
    "India": {"dial_code": "+91", "code": "IN"},
    "Indonesia": {"dial_code": "+62", "code": "ID"},
    "Iran, Islamic Republic of Persian Gulf": {
      "dial_code": "+98",
      "code": "IR"
    },
    "Iraq": {"dial_code": "+964", "code": "IQ"},
    "Ireland": {"dial_code": "+353", "code": "IE"},
    "Isle of Man": {"dial_code": "+44", "code": "IM"},
    "Israel": {"dial_code": "+972", "code": "IL"},
    "Italy": {"dial_code": "+39", "code": "IT"},
    "Jamaica": {"dial_code": "+1876", "code": "JM"},
    "Japan": {"dial_code": "+81", "code": "JP"},
    "Jersey": {"dial_code": "+44", "code": "JE"},
    "Jordan": {"dial_code": "+962", "code": "JO"},
    "Kazakhstan": {"dial_code": "+77", "code": "KZ"},
    "Kenya": {"dial_code": "+254", "code": "KE"},
    "Kiribati": {"dial_code": "+686", "code": "KI"},
    "Korea, Democratic People's Republic of Korea": {
      "dial_code": "+850",
      "code": "KP"
    },
    "Korea, Republic of South Korea": {"dial_code": "+82", "code": "KR"},
    "Kuwait": {"dial_code": "+965", "code": "KW"},
    "Kyrgyzstan": {"dial_code": "+996", "code": "KG"},
    "Laos": {"dial_code": "+856", "code": "LA"},
    "Latvia": {"dial_code": "+371", "code": "LV"},
    "Lebanon": {"dial_code": "+961", "code": "LB"},
    "Lesotho": {"dial_code": "+266", "code": "LS"},
    "Liberia": {"dial_code": "+231", "code": "LR"},
    "Libyan Arab Jamahiriya": {"dial_code": "+218", "code": "LY"},
    "Liechtenstein": {"dial_code": "+423", "code": "LI"},
    "Lithuania": {"dial_code": "+370", "code": "LT"},
    "Luxembourg": {"dial_code": "+352", "code": "LU"},
    "Macao": {"dial_code": "+853", "code": "MO"},
    "Macedonia": {"dial_code": "+389", "code": "MK"},
    "Madagascar": {"dial_code": "+261", "code": "MG"},
    "Malawi": {"dial_code": "+265", "code": "MW"},
    "Malaysia": {"dial_code": "+60", "code": "MY"},
    "Maldives": {"dial_code": "+960", "code": "MV"},
    "Mali": {"dial_code": "+223", "code": "ML"},
    "Malta": {"dial_code": "+356", "code": "MT"},
    "Marshall Islands": {"dial_code": "+692", "code": "MH"},
    "Martinique": {"dial_code": "+596", "code": "MQ"},
    "Mauritania": {"dial_code": "+222", "code": "MR"},
    "Mauritius": {"dial_code": "+230", "code": "MU"},
    "Mayotte": {"dial_code": "+262", "code": "YT"},
    "Mexico": {"dial_code": "+52", "code": "MX"},
    "Micronesia, Federated States of Micronesia": {
      "dial_code": "+691",
      "code": "FM"
    },
    "Moldova": {"dial_code": "+373", "code": "MD"},
    "Monaco": {"dial_code": "+377", "code": "MC"},
    "Mongolia": {"dial_code": "+976", "code": "MN"},
    "Montenegro": {"dial_code": "+382", "code": "ME"},
    "Montserrat": {"dial_code": "+1664", "code": "MS"},
    "Morocco": {"dial_code": "+212", "code": "MA"},
    "Mozambique": {"dial_code": "+258", "code": "MZ"},
    "Myanmar": {"dial_code": "+95", "code": "MM"},
    "Namibia": {"dial_code": "+264", "code": "NA"},
    "Nauru": {"dial_code": "+674", "code": "NR"},
    "Nepal": {"dial_code": "+977", "code": "NP"},
    "Netherlands": {"dial_code": "+31", "code": "NL"},
    "Netherlands Antilles": {"dial_code": "+599", "code": "AN"},
    "New Caledonia": {"dial_code": "+687", "code": "NC"},
    "New Zealand": {"dial_code": "+64", "code": "NZ"},
    "Nicaragua": {"dial_code": "+505", "code": "NI"},
    "Niger": {"dial_code": "+227", "code": "NE"},
    "Nigeria": {"dial_code": "+234", "code": "NG"},
    "Niue": {"dial_code": "+683", "code": "NU"},
    "Norfolk Island": {"dial_code": "+672", "code": "NF"},
    "Northern Mariana Islands": {"dial_code": "+1670", "code": "MP"},
    "Norway": {"dial_code": "+47", "code": "NO"},
    "Oman": {"dial_code": "+968", "code": "OM"},
    "Pakistan": {"dial_code": "+92", "code": "PK"},
    "Palau": {"dial_code": "+680", "code": "PW"},
    "Palestinian Territory, Occupied": {"dial_code": "+970", "code": "PS"},
    "Panama": {"dial_code": "+507", "code": "PA"},
    "Papua New Guinea": {"dial_code": "+675", "code": "PG"},
    "Paraguay": {"dial_code": "+595", "code": "PY"},
    "Peru": {"dial_code": "+51", "code": "PE"},
    "Philippines": {"dial_code": "+63", "code": "PH"},
    "Pitcairn": {"dial_code": "+872", "code": "PN"},
    "Poland": {"dial_code": "+48", "code": "PL"},
    "Portugal": {"dial_code": "+351", "code": "PT"},
    "Puerto Rico": {"dial_code": "+1939", "code": "PR"},
    "Qatar": {"dial_code": "+974", "code": "QA"},
    "Romania": {"dial_code": "+40", "code": "RO"},
    "Russia": {"dial_code": "+7", "code": "RU"},
    "Rwanda": {"dial_code": "+250", "code": "RW"},
    "Reunion": {"dial_code": "+262", "code": "RE"},
    "Saint Barthelemy": {"dial_code": "+590", "code": "BL"},
    "Saint Helena, Ascension and Tristan Da Cunha": {
      "dial_code": "+290",
      "code": "SH"
    },
    "Saint Kitts and Nevis": {"dial_code": "+1869", "code": "KN"},
    "Saint Lucia": {"dial_code": "+1758", "code": "LC"},
    "Saint Martin": {"dial_code": "+590", "code": "MF"},
    "Saint Pierre and Miquelon": {"dial_code": "+508", "code": "PM"},
    "Saint Vincent and the Grenadines": {"dial_code": "+1784", "code": "VC"},
    "Samoa": {"dial_code": "+685", "code": "WS"},
    "San Marino": {"dial_code": "+378", "code": "SM"},
    "Sao Tome and Principe": {"dial_code": "+239", "code": "ST"},
    "Saudi Arabia": {"dial_code": "+966", "code": "SA"},
    "Senegal": {"dial_code": "+221", "code": "SN"},
    "Serbia": {"dial_code": "+381", "code": "RS"},
    "Seychelles": {"dial_code": "+248", "code": "SC"},
    "Sierra Leone": {"dial_code": "+232", "code": "SL"},
    "Singapore": {"dial_code": "+65", "code": "SG"},
    "Slovakia": {"dial_code": "+421", "code": "SK"},
    "Slovenia": {"dial_code": "+386", "code": "SI"},
    "Solomon Islands": {"dial_code": "+677", "code": "SB"},
    "Somalia": {"dial_code": "+252", "code": "SO"},
    "South Africa": {"dial_code": "+27", "code": "ZA"},
    "South Sudan": {"dial_code": "+211", "code": "SS"},
    "South Georgia and the South Sandwich Islands": {
      "dial_code": "+500",
      "code": "GS"
    },
    "Spain": {"dial_code": "+34", "code": "ES"},
    "Sri Lanka": {"dial_code": "+94", "code": "LK"},
    "Sudan": {"dial_code": "+249", "code": "SD"},
    "Suriname": {"dial_code": "+597", "code": "SR"},
    "Svalbard and Jan Mayen": {"dial_code": "+47", "code": "SJ"},
    "Swaziland": {"dial_code": "+268", "code": "SZ"},
    "Sweden": {"dial_code": "+46", "code": "SE"},
    "Switzerland": {"dial_code": "+41", "code": "CH"},
    "Syrian Arab Republic": {"dial_code": "+963", "code": "SY"},
    "Taiwan": {"dial_code": "+886", "code": "TW"},
    "Tajikistan": {"dial_code": "+992", "code": "TJ"},
    "Tanzania, United Republic of Tanzania": {
      "dial_code": "+255",
      "code": "TZ"
    },
    "Thailand": {"dial_code": "+66", "code": "TH"},
    "Timor-Leste": {"dial_code": "+670", "code": "TL"},
    "Togo": {"dial_code": "+228", "code": "TG"},
    "Tokelau": {"dial_code": "+690", "code": "TK"},
    "Tonga": {"dial_code": "+676", "code": "TO"},
    "Trinidad and Tobago": {"dial_code": "+1868", "code": "TT"},
    "Tunisia": {"dial_code": "+216", "code": "TN"},
    "Turkey": {"dial_code": "+90", "code": "TR"},
    "Turkmenistan": {"dial_code": "+993", "code": "TM"},
    "Turks and Caicos Islands": {"dial_code": "+1649", "code": "TC"},
    "Tuvalu": {"dial_code": "+688", "code": "TV"},
    "Uganda": {"dial_code": "+256", "code": "UG"},
    "Ukraine": {"dial_code": "+380", "code": "UA"},
    "United Arab Emirates": {"dial_code": "+971", "code": "AE"},
    "United Kingdom": {"dial_code": "+44", "code": "GB"},
    "United States": {"dial_code": "+1", "code": "US"},
    "Uruguay": {"dial_code": "+598", "code": "UY"},
    "Uzbekistan": {"dial_code": "+998", "code": "UZ"},
    "Vanuatu": {"dial_code": "+678", "code": "VU"},
    "Venezuela, Bolivarian Republic of Venezuela": {
      "dial_code": "+58",
      "code": "VE"
    },
    "Vietnam": {"dial_code": "+84", "code": "VN"},
    "Virgin Islands, British": {"dial_code": "+1284", "code": "VG"},
    "Virgin Islands, U.S.": {"dial_code": "+1340", "code": "VI"},
    "Wallis and Futuna": {"dial_code": "+681", "code": "WF"},
    "Yemen": {"dial_code": "+967", "code": "YE"},
    "Zambia": {"dial_code": "+260", "code": "ZM"},
    "Zimbabwe": {"dial_code": "+263", "code": "ZW"}
  };

  final countryCode = countryInfoJson[countryName]?["code"];

  if (countryCode != null) {
    final countryCodeInLowerCase = countryCode.toLowerCase();
    return 'https://flagcdn.com/h80/$countryCodeInLowerCase.png';
  }

  return null;
}

List<String> getCountryList() {
  final countries = [
    "Afghanistan",
    "Aland Islands",
    "Albania",
    "Algeria",
    "AmericanSamoa",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antarctica",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Brazil",
    "British Indian Ocean Territory",
    "Brunei Darussalam",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Cape Verde",
    "Cayman Islands",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Christmas Island",
    "Cocos (Keeling) Islands",
    "Colombia",
    "Comoros",
    "Congo",
    "Congo, The Democratic Republic of the Congo",
    "Cook Islands",
    "Costa Rica",
    "Cote d'Ivoire",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Ethiopia",
    "Falkland Islands (Malvinas",
    "Faroe Islands",
    "Fiji",
    "Finland",
    "France",
    "French Guiana",
    "French Polynesia",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Gibraltar",
    "Greece",
    "Greenland",
    "Grenada",
    "Guadeloupe",
    "Guam",
    "Guatemala",
    "Guernsey",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Holy See (Vatican City State",
    "Honduras",
    "Hong Kong",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran, Islamic Republic of Persian Gulf",
    "Iraq",
    "Ireland",
    "Isle of Man",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jersey",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Korea, Democratic People's Republic of Korea",
    "Korea, Republic of South Korea",
    "Kuwait",
    "Kyrgyzstan",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libyan Arab Jamahiriya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macao",
    "Macedonia",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands",
    "Martinique",
    "Mauritania",
    "Mauritius",
    "Mayotte",
    "Mexico",
    "Micronesia, Federated States of Micronesia",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Montserrat",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "Netherlands Antilles",
    "New Caledonia",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "Niue",
    "Norfolk Island",
    "Northern Mariana Islands",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Palestinian Territory, Occupied",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Pitcairn",
    "Poland",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Romania",
    "Russia",
    "Rwanda",
    "Reunion",
    "Saint Barthelemy",
    "Saint Helena, Ascension and Tristan Da Cunha",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Martin",
    "Saint Pierre and Miquelon",
    "Saint Vincent and the Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Sudan",
    "South Georgia and the South Sandwich Islands",
    "Spain",
    "Sri Lanka",
    "Sudan",
    "Suriname",
    "Svalbard and Jan Mayen",
    "Swaziland",
    "Sweden",
    "Switzerland",
    "Syrian Arab Republic",
    "Taiwan",
    "Tajikistan",
    "Tanzania, United Republic of Tanzania",
    "Thailand",
    "Timor-Leste",
    "Togo",
    "Tokelau",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Turks and Caicos Islands",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "United States",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Venezuela, Bolivarian Republic of Venezuela",
    "Vietnam",
    "Virgin Islands, British",
    "Virgin Islands, U.S",
    "Wallis and Futuna",
    "Yemen",
    "Zambia",
    "Zimbabwe",
  ];

  return countries;
}

String? getDialCode(String? countryName) {
  if (countryName == null) {
    return null;
  }
  final countryInfoJson = {
    "Afghanistan": {"dial_code": "+93", "code": "AF"},
    "Aland Islands": {"dial_code": "+358", "code": "AX"},
    "Albania": {"dial_code": "+355", "code": "AL"},
    "Algeria": {"dial_code": "+213", "code": "DZ"},
    "AmericanSamoa": {"dial_code": "+1684", "code": "AS"},
    "Andorra": {"dial_code": "+376", "code": "AD"},
    "Angola": {"dial_code": "+244", "code": "AO"},
    "Anguilla": {"dial_code": "+1264", "code": "AI"},
    "Antarctica": {"dial_code": "+672", "code": "AQ"},
    "Antigua and Barbuda": {"dial_code": "+1268", "code": "AG"},
    "Argentina": {"dial_code": "+54", "code": "AR"},
    "Armenia": {"dial_code": "+374", "code": "AM"},
    "Aruba": {"dial_code": "+297", "code": "AW"},
    "Australia": {"dial_code": "+61", "code": "AU"},
    "Austria": {"dial_code": "+43", "code": "AT"},
    "Azerbaijan": {"dial_code": "+994", "code": "AZ"},
    "Bahamas": {"dial_code": "+1242", "code": "BS"},
    "Bahrain": {"dial_code": "+973", "code": "BH"},
    "Bangladesh": {"dial_code": "+880", "code": "BD"},
    "Barbados": {"dial_code": "+1246", "code": "BB"},
    "Belarus": {"dial_code": "+375", "code": "BY"},
    "Belgium": {"dial_code": "+32", "code": "BE"},
    "Belize": {"dial_code": "+501", "code": "BZ"},
    "Benin": {"dial_code": "+229", "code": "BJ"},
    "Bermuda": {"dial_code": "+1441", "code": "BM"},
    "Bhutan": {"dial_code": "+975", "code": "BT"},
    "Bolivia, Plurinational State of": {"dial_code": "+591", "code": "BO"},
    "Bosnia and Herzegovina": {"dial_code": "+387", "code": "BA"},
    "Botswana": {"dial_code": "+267", "code": "BW"},
    "Brazil": {"dial_code": "+55", "code": "BR"},
    "British Indian Ocean Territory": {"dial_code": "+246", "code": "IO"},
    "Brunei Darussalam": {"dial_code": "+673", "code": "BN"},
    "Bulgaria": {"dial_code": "+359", "code": "BG"},
    "Burkina Faso": {"dial_code": "+226", "code": "BF"},
    "Burundi": {"dial_code": "+257", "code": "BI"},
    "Cambodia": {"dial_code": "+855", "code": "KH"},
    "Cameroon": {"dial_code": "+237", "code": "CM"},
    "Canada": {"dial_code": "+1", "code": "CA"},
    "Cape Verde": {"dial_code": "+238", "code": "CV"},
    "Cayman Islands": {"dial_code": "+ 345", "code": "KY"},
    "Central African Republic": {"dial_code": "+236", "code": "CF"},
    "Chad": {"dial_code": "+235", "code": "TD"},
    "Chile": {"dial_code": "+56", "code": "CL"},
    "China": {"dial_code": "+86", "code": "CN"},
    "Christmas Island": {"dial_code": "+61", "code": "CX"},
    "Cocos (Keeling) Islands": {"dial_code": "+61", "code": "CC"},
    "Colombia": {"dial_code": "+57", "code": "CO"},
    "Comoros": {"dial_code": "+269", "code": "KM"},
    "Congo": {"dial_code": "+242", "code": "CG"},
    "Congo, The Democratic Republic of the Congo": {
      "dial_code": "+243",
      "code": "CD"
    },
    "Cook Islands": {"dial_code": "+682", "code": "CK"},
    "Costa Rica": {"dial_code": "+506", "code": "CR"},
    "Cote d'Ivoire": {"dial_code": "+225", "code": "CI"},
    "Croatia": {"dial_code": "+385", "code": "HR"},
    "Cuba": {"dial_code": "+53", "code": "CU"},
    "Cyprus": {"dial_code": "+357", "code": "CY"},
    "Czech Republic": {"dial_code": "+420", "code": "CZ"},
    "Denmark": {"dial_code": "+45", "code": "DK"},
    "Djibouti": {"dial_code": "+253", "code": "DJ"},
    "Dominica": {"dial_code": "+1767", "code": "DM"},
    "Dominican Republic": {"dial_code": "+1849", "code": "DO"},
    "Ecuador": {"dial_code": "+593", "code": "EC"},
    "Egypt": {"dial_code": "+20", "code": "EG"},
    "El Salvador": {"dial_code": "+503", "code": "SV"},
    "Equatorial Guinea": {"dial_code": "+240", "code": "GQ"},
    "Eritrea": {"dial_code": "+291", "code": "ER"},
    "Estonia": {"dial_code": "+372", "code": "EE"},
    "Ethiopia": {"dial_code": "+251", "code": "ET"},
    "Falkland Islands (Malvinas)": {"dial_code": "+500", "code": "FK"},
    "Faroe Islands": {"dial_code": "+298", "code": "FO"},
    "Fiji": {"dial_code": "+679", "code": "FJ"},
    "Finland": {"dial_code": "+358", "code": "FI"},
    "France": {"dial_code": "+33", "code": "FR"},
    "French Guiana": {"dial_code": "+594", "code": "GF"},
    "French Polynesia": {"dial_code": "+689", "code": "PF"},
    "Gabon": {"dial_code": "+241", "code": "GA"},
    "Gambia": {"dial_code": "+220", "code": "GM"},
    "Georgia": {"dial_code": "+995", "code": "GE"},
    "Germany": {"dial_code": "+49", "code": "DE"},
    "Ghana": {"dial_code": "+233", "code": "GH"},
    "Gibraltar": {"dial_code": "+350", "code": "GI"},
    "Greece": {"dial_code": "+30", "code": "GR"},
    "Greenland": {"dial_code": "+299", "code": "GL"},
    "Grenada": {"dial_code": "+1473", "code": "GD"},
    "Guadeloupe": {"dial_code": "+590", "code": "GP"},
    "Guam": {"dial_code": "+1671", "code": "GU"},
    "Guatemala": {"dial_code": "+502", "code": "GT"},
    "Guernsey": {"dial_code": "+44", "code": "GG"},
    "Guinea": {"dial_code": "+224", "code": "GN"},
    "Guinea-Bissau": {"dial_code": "+245", "code": "GW"},
    "Guyana": {"dial_code": "+595", "code": "GY"},
    "Haiti": {"dial_code": "+509", "code": "HT"},
    "Holy See (Vatican City State)": {"dial_code": "+379", "code": "VA"},
    "Honduras": {"dial_code": "+504", "code": "HN"},
    "Hong Kong": {"dial_code": "+852", "code": "HK"},
    "Hungary": {"dial_code": "+36", "code": "HU"},
    "Iceland": {"dial_code": "+354", "code": "IS"},
    "India": {"dial_code": "+91", "code": "IN"},
    "Indonesia": {"dial_code": "+62", "code": "ID"},
    "Iran, Islamic Republic of Persian Gulf": {
      "dial_code": "+98",
      "code": "IR"
    },
    "Iraq": {"dial_code": "+964", "code": "IQ"},
    "Ireland": {"dial_code": "+353", "code": "IE"},
    "Isle of Man": {"dial_code": "+44", "code": "IM"},
    "Israel": {"dial_code": "+972", "code": "IL"},
    "Italy": {"dial_code": "+39", "code": "IT"},
    "Jamaica": {"dial_code": "+1876", "code": "JM"},
    "Japan": {"dial_code": "+81", "code": "JP"},
    "Jersey": {"dial_code": "+44", "code": "JE"},
    "Jordan": {"dial_code": "+962", "code": "JO"},
    "Kazakhstan": {"dial_code": "+77", "code": "KZ"},
    "Kenya": {"dial_code": "+254", "code": "KE"},
    "Kiribati": {"dial_code": "+686", "code": "KI"},
    "Korea, Democratic People's Republic of Korea": {
      "dial_code": "+850",
      "code": "KP"
    },
    "Korea, Republic of South Korea": {"dial_code": "+82", "code": "KR"},
    "Kuwait": {"dial_code": "+965", "code": "KW"},
    "Kyrgyzstan": {"dial_code": "+996", "code": "KG"},
    "Laos": {"dial_code": "+856", "code": "LA"},
    "Latvia": {"dial_code": "+371", "code": "LV"},
    "Lebanon": {"dial_code": "+961", "code": "LB"},
    "Lesotho": {"dial_code": "+266", "code": "LS"},
    "Liberia": {"dial_code": "+231", "code": "LR"},
    "Libyan Arab Jamahiriya": {"dial_code": "+218", "code": "LY"},
    "Liechtenstein": {"dial_code": "+423", "code": "LI"},
    "Lithuania": {"dial_code": "+370", "code": "LT"},
    "Luxembourg": {"dial_code": "+352", "code": "LU"},
    "Macao": {"dial_code": "+853", "code": "MO"},
    "Macedonia": {"dial_code": "+389", "code": "MK"},
    "Madagascar": {"dial_code": "+261", "code": "MG"},
    "Malawi": {"dial_code": "+265", "code": "MW"},
    "Malaysia": {"dial_code": "+60", "code": "MY"},
    "Maldives": {"dial_code": "+960", "code": "MV"},
    "Mali": {"dial_code": "+223", "code": "ML"},
    "Malta": {"dial_code": "+356", "code": "MT"},
    "Marshall Islands": {"dial_code": "+692", "code": "MH"},
    "Martinique": {"dial_code": "+596", "code": "MQ"},
    "Mauritania": {"dial_code": "+222", "code": "MR"},
    "Mauritius": {"dial_code": "+230", "code": "MU"},
    "Mayotte": {"dial_code": "+262", "code": "YT"},
    "Mexico": {"dial_code": "+52", "code": "MX"},
    "Micronesia, Federated States of Micronesia": {
      "dial_code": "+691",
      "code": "FM"
    },
    "Moldova": {"dial_code": "+373", "code": "MD"},
    "Monaco": {"dial_code": "+377", "code": "MC"},
    "Mongolia": {"dial_code": "+976", "code": "MN"},
    "Montenegro": {"dial_code": "+382", "code": "ME"},
    "Montserrat": {"dial_code": "+1664", "code": "MS"},
    "Morocco": {"dial_code": "+212", "code": "MA"},
    "Mozambique": {"dial_code": "+258", "code": "MZ"},
    "Myanmar": {"dial_code": "+95", "code": "MM"},
    "Namibia": {"dial_code": "+264", "code": "NA"},
    "Nauru": {"dial_code": "+674", "code": "NR"},
    "Nepal": {"dial_code": "+977", "code": "NP"},
    "Netherlands": {"dial_code": "+31", "code": "NL"},
    "Netherlands Antilles": {"dial_code": "+599", "code": "AN"},
    "New Caledonia": {"dial_code": "+687", "code": "NC"},
    "New Zealand": {"dial_code": "+64", "code": "NZ"},
    "Nicaragua": {"dial_code": "+505", "code": "NI"},
    "Niger": {"dial_code": "+227", "code": "NE"},
    "Nigeria": {"dial_code": "+234", "code": "NG"},
    "Niue": {"dial_code": "+683", "code": "NU"},
    "Norfolk Island": {"dial_code": "+672", "code": "NF"},
    "Northern Mariana Islands": {"dial_code": "+1670", "code": "MP"},
    "Norway": {"dial_code": "+47", "code": "NO"},
    "Oman": {"dial_code": "+968", "code": "OM"},
    "Pakistan": {"dial_code": "+92", "code": "PK"},
    "Palau": {"dial_code": "+680", "code": "PW"},
    "Palestinian Territory, Occupied": {"dial_code": "+970", "code": "PS"},
    "Panama": {"dial_code": "+507", "code": "PA"},
    "Papua New Guinea": {"dial_code": "+675", "code": "PG"},
    "Paraguay": {"dial_code": "+595", "code": "PY"},
    "Peru": {"dial_code": "+51", "code": "PE"},
    "Philippines": {"dial_code": "+63", "code": "PH"},
    "Pitcairn": {"dial_code": "+872", "code": "PN"},
    "Poland": {"dial_code": "+48", "code": "PL"},
    "Portugal": {"dial_code": "+351", "code": "PT"},
    "Puerto Rico": {"dial_code": "+1939", "code": "PR"},
    "Qatar": {"dial_code": "+974", "code": "QA"},
    "Romania": {"dial_code": "+40", "code": "RO"},
    "Russia": {"dial_code": "+7", "code": "RU"},
    "Rwanda": {"dial_code": "+250", "code": "RW"},
    "Reunion": {"dial_code": "+262", "code": "RE"},
    "Saint Barthelemy": {"dial_code": "+590", "code": "BL"},
    "Saint Helena, Ascension and Tristan Da Cunha": {
      "dial_code": "+290",
      "code": "SH"
    },
    "Saint Kitts and Nevis": {"dial_code": "+1869", "code": "KN"},
    "Saint Lucia": {"dial_code": "+1758", "code": "LC"},
    "Saint Martin": {"dial_code": "+590", "code": "MF"},
    "Saint Pierre and Miquelon": {"dial_code": "+508", "code": "PM"},
    "Saint Vincent and the Grenadines": {"dial_code": "+1784", "code": "VC"},
    "Samoa": {"dial_code": "+685", "code": "WS"},
    "San Marino": {"dial_code": "+378", "code": "SM"},
    "Sao Tome and Principe": {"dial_code": "+239", "code": "ST"},
    "Saudi Arabia": {"dial_code": "+966", "code": "SA"},
    "Senegal": {"dial_code": "+221", "code": "SN"},
    "Serbia": {"dial_code": "+381", "code": "RS"},
    "Seychelles": {"dial_code": "+248", "code": "SC"},
    "Sierra Leone": {"dial_code": "+232", "code": "SL"},
    "Singapore": {"dial_code": "+65", "code": "SG"},
    "Slovakia": {"dial_code": "+421", "code": "SK"},
    "Slovenia": {"dial_code": "+386", "code": "SI"},
    "Solomon Islands": {"dial_code": "+677", "code": "SB"},
    "Somalia": {"dial_code": "+252", "code": "SO"},
    "South Africa": {"dial_code": "+27", "code": "ZA"},
    "South Sudan": {"dial_code": "+211", "code": "SS"},
    "South Georgia and the South Sandwich Islands": {
      "dial_code": "+500",
      "code": "GS"
    },
    "Spain": {"dial_code": "+34", "code": "ES"},
    "Sri Lanka": {"dial_code": "+94", "code": "LK"},
    "Sudan": {"dial_code": "+249", "code": "SD"},
    "Suriname": {"dial_code": "+597", "code": "SR"},
    "Svalbard and Jan Mayen": {"dial_code": "+47", "code": "SJ"},
    "Swaziland": {"dial_code": "+268", "code": "SZ"},
    "Sweden": {"dial_code": "+46", "code": "SE"},
    "Switzerland": {"dial_code": "+41", "code": "CH"},
    "Syrian Arab Republic": {"dial_code": "+963", "code": "SY"},
    "Taiwan": {"dial_code": "+886", "code": "TW"},
    "Tajikistan": {"dial_code": "+992", "code": "TJ"},
    "Tanzania, United Republic of Tanzania": {
      "dial_code": "+255",
      "code": "TZ"
    },
    "Thailand": {"dial_code": "+66", "code": "TH"},
    "Timor-Leste": {"dial_code": "+670", "code": "TL"},
    "Togo": {"dial_code": "+228", "code": "TG"},
    "Tokelau": {"dial_code": "+690", "code": "TK"},
    "Tonga": {"dial_code": "+676", "code": "TO"},
    "Trinidad and Tobago": {"dial_code": "+1868", "code": "TT"},
    "Tunisia": {"dial_code": "+216", "code": "TN"},
    "Turkey": {"dial_code": "+90", "code": "TR"},
    "Turkmenistan": {"dial_code": "+993", "code": "TM"},
    "Turks and Caicos Islands": {"dial_code": "+1649", "code": "TC"},
    "Tuvalu": {"dial_code": "+688", "code": "TV"},
    "Uganda": {"dial_code": "+256", "code": "UG"},
    "Ukraine": {"dial_code": "+380", "code": "UA"},
    "United Arab Emirates": {"dial_code": "+971", "code": "AE"},
    "United Kingdom": {"dial_code": "+44", "code": "GB"},
    "United States": {"dial_code": "+1", "code": "US"},
    "Uruguay": {"dial_code": "+598", "code": "UY"},
    "Uzbekistan": {"dial_code": "+998", "code": "UZ"},
    "Vanuatu": {"dial_code": "+678", "code": "VU"},
    "Venezuela, Bolivarian Republic of Venezuela": {
      "dial_code": "+58",
      "code": "VE"
    },
    "Vietnam": {"dial_code": "+84", "code": "VN"},
    "Virgin Islands, British": {"dial_code": "+1284", "code": "VG"},
    "Virgin Islands, U.S.": {"dial_code": "+1340", "code": "VI"},
    "Wallis and Futuna": {"dial_code": "+681", "code": "WF"},
    "Yemen": {"dial_code": "+967", "code": "YE"},
    "Zambia": {"dial_code": "+260", "code": "ZM"},
    "Zimbabwe": {"dial_code": "+263", "code": "ZW"}
  };

  final countryDialCode = countryInfoJson[countryName]?["dial_code"];

  if (countryDialCode != null) {
    return countryDialCode;
  }

  return null;
}

int? daysCalculationInModifyBooking(
  DateTime? checkIn,
  DateTime? checkOut,
) {
  int days = 0;
  if (checkIn != null && checkOut != null) {
    Duration difference = checkOut.difference(checkIn);
    days = difference.inDays;
  }
  // print("no.of days before modify: $days");
  return days;
}

List<DateTime>? strTolstDateConversion(
  DateTime? checkIn,
  DateTime? checkOut,
) {
  List<DateTime> selectedDates = [checkIn!, checkOut!];

  return selectedDates;
}

bool? isModifyBookingAllowed(String? checkInDate) {
  bool isBeforeCheckInTime = false;
  if (checkInDate!.isNotEmpty && checkInDate != "" && checkInDate != null) {
    DateTime checkIn = DateTime.parse(checkInDate);

    DateTime beforeCheckInDay =
        DateTime(checkIn.year, checkIn.month, checkIn.day - 2);

    DateTime currentDateTime = DateTime.now();

    if (beforeCheckInDay.isAfter(currentDateTime)) {
      print("Before : $beforeCheckInDay - Current : $currentDateTime");
      isBeforeCheckInTime = true;
    }
  }

  print("User Modification : $isBeforeCheckInTime");
  return isBeforeCheckInTime;
}

dynamic getCompleteAdresswithLocation(String? address) {
  List<String> data = address!.split(',');

  var result = {};

  if (data.length > 1) {
    result['Street'] = data.length >= 5 ? data[data.length - 5].trim() : '';
    result['locality'] = data.length >= 4 ? data[data.length - 4].trim() : '';
    result['city'] = data.length >= 3 ? data[data.length - 3].trim() : '';
    result['state'] = data.length >= 2
        ? data[data.length - 2].replaceAll(RegExp(r'[^a-zA-Z\s]'), '').trim()
        : '';
    result['country'] = data.length >= 1 ? data[data.length - 1].trim() : '';
  } else {
    result['Street'] = '';
    result['locality'] = '';
    result['city'] = '';
    result['state'] = '';
    result['country'] = '';
  }

  print(result);
  return result;
}

String? getPriorityTitle(int? priorityId) {
  String? result = "";

  switch (priorityId) {
    case 0:
      result = 'Low';
      break;
    case 1:
      result = 'Medium';
      break;
    case 2:
      result = 'High';
      break;
    default:
  }
  return result;
}

Color? getPriorityColor(int? propertyId) {
  Color? result;

  switch (propertyId) {
    case 0:
      result = Color(0xffFFC700);
      break;
    case 1:
      result = Color(0xffFFA500);
      break;
    case 2:
      result = Color(0xffFF0000);
      break;
    default:
  }
  return result;
}

int? getReviewStatus(int? reviewStatus) {
  int? result;

  switch (reviewStatus) {
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    default:
  }
  return result;
}

List<dynamic>? getPiFilesArray(
  List<dynamic>? getFileNames,
  String? additionalFile,
  FFUploadedFile? additionalDocumentFile,
  String? propertyOwnerPicture,
  FFUploadedFile? profileFile,
) {
  if (additionalDocumentFile != null) {
    String? fileName = additionalDocumentFile.name;

    getFileNames!.add({"key": additionalFile, "fileName": fileName});
  }

  if (profileFile != null) {
    String? fileName = profileFile.name;

    getFileNames!.add({"key": propertyOwnerPicture, "fileName": fileName});
  }

  return getFileNames;
}

String? getPMStatusFromJsonToStr(String? status) {
  String result = status!;

  return result;
}

dynamic piFeedbackJson(
  String? inspectionStartedDate,
  String? propertyInspectorName,
  String? propertyTitle,
  String? country,
  String? flatHouseName,
  String? propertyType,
  String? flatHouseVillanumber,
  String? nearbyLandmark,
  String? streetAddress,
  String? locality,
  String? city,
  String? state,
  String? pinCode,
  String? propertySize,
  int? bedrooms,
  int? bathrooms,
  int? otherRooms,
  String? userPersonalDocument,
  String? propertyDocument,
  String? roofCondition,
  String? windowsAndDoors,
  String? drivewayAndSidewalks,
  String? buildingPaintingCondition,
  String? flooringCondition,
  String? fireExits,
  String? wallsAndSiding,
  String? foundationAndStructure,
  String? drainageSystem,
  String? buildingCondition,
  String? liftStaircase,
  String? flooring,
  String? doorsWindows,
  String? plumbingsystem,
  String? hvacsystem,
  String? wallsandceilings,
  String? electricalsystem,
  String? bathroomFixtures,
  String? customizableSpace,
  int? balconies,
  int? doors,
  int? fans,
  int? lights,
  String? washrooms,
  String? washbasins,
  String? showers,
  String? smokeDetectors,
  String? carbonmonoxideDetectors,
  String? fireExtinguishers,
  String? handrailsAndStaircases,
  String? securityguard,
  String? digitalDoorLock,
  String? cctv,
  String? kitchenAppliances,
  String? laundryFacilities,
  String? heatingAndAirConditioningSystems,
  String? internetAccess,
  String? parkingSpace,
  String? petfriendly,
  String? playgroundOrRecreationalAreas,
  String? poolAccess,
  String? propertyLocationFallsUnder,
  String? propertyMaintenance,
  String? transportationFeasibility,
  String? pricingReasonableToTheArea,
  String? localMarketRentPrice,
  String? propertyAreaLocationType,
  String? publicTransportTypeFrequency,
  String? legalIssues,
  String? businessFeasibility,
  String? additionalComments,
  String? formSubmittedDate,
) {
  var feedback = {
    "Inspection Started Date": inspectionStartedDate,
    "Property inspector name": propertyInspectorName,
    "Property Information": [
      {"Property Title": propertyTitle},
      {
        "Property Address": [
          {"Country": country},
          {"Flat,house name": flatHouseName},
          {"Property Type": propertyType},
          {"Flat/House/Villa number": flatHouseVillanumber},
          {"Nearby landmark": nearbyLandmark},
          {"Strreet address": streetAddress},
          {"Locality": locality},
          {"City/Town": city},
          {"State": state},
          {"PIN Code": pinCode}
        ]
      },
      {"Property Size": propertySize},
      {"Number of bedrooms": bedrooms},
      {"Number of bathrooms": bathrooms},
      {"Other rooms": otherRooms}
    ],
    "Document Verification": [
      {"User personal document": userPersonalDocument},
      {"Property document": propertyDocument}
    ],
    "Exterior Inspection": [
      {"Roof Condition": roofCondition},
      {"Windows and Doors": windowsAndDoors},
      {"Driveway and sidewalks": drivewayAndSidewalks},
      {"Building painting condition": buildingPaintingCondition},
      {"Flooring condition": flooringCondition},
      {"Fire exits": fireExits},
      {"Walls and Siding": wallsAndSiding},
      {"Foundation and structure": foundationAndStructure},
      {"Drainage system": drainageSystem},
      {"Building condition": buildingCondition},
      {"Lift/Staircase": liftStaircase}
    ],
    "Interior Inspection": [
      {"Flooring": flooring},
      {"Doors & Windows": doorsWindows},
      {"Plumbing system": plumbingsystem},
      {"HVAC system": hvacsystem},
      {"Walls and ceilings": wallsandceilings},
      {"Electrical system": electricalsystem},
      {"Bathroom fixtures": bathroomFixtures},
      {"Customizable space": customizableSpace},
      {"No. of balconies": balconies},
      {"No. of doors": doors},
      {"No. of fans": fans},
      {"No. of lights": lights},
      {"No. of washrooms": washrooms},
      {"No. of washbasins": washbasins},
      {"No. of showers": showers}
    ],
    "Safety and Compliances": [
      {"Smoke detectors": smokeDetectors},
      {"Carbon monoxide detectors": carbonmonoxideDetectors},
      {"Fire extinguishers": fireExtinguishers},
      {"Handrails and staircases": handrailsAndStaircases},
      {"Security guard": securityguard},
      {"Digital door lock": digitalDoorLock},
      {"CCTV": cctv}
    ],
    "Amenities": [
      {"Kitchen appliances": kitchenAppliances},
      {"Laundry facilities": laundryFacilities},
      {
        "Heating and air conditioning systems": heatingAndAirConditioningSystems
      },
      {"Internet access": internetAccess},
      {"Parking space": parkingSpace},
      {"Pet friendly": petfriendly},
      {"Playground or recreational areas": playgroundOrRecreationalAreas},
      {"Pool access": poolAccess}
    ],
    "Business Compliances": [
      {"Property location falls under": propertyLocationFallsUnder},
      {"Property maintenance": propertyMaintenance},
      {"Transportation feasibility": transportationFeasibility},
      {"Pricing reasonable to the area": pricingReasonableToTheArea},
      {"Local market rent price": localMarketRentPrice},
      {"Property area location type": propertyAreaLocationType},
      {"Public transport type/frequency": publicTransportTypeFrequency},
      {"Legal issues": legalIssues},
      {"Business feasibility": businessFeasibility}
    ],
    "Additional Comments": additionalComments,
    "Feedback Submitted Date": formSubmittedDate
  };

  return feedback;
}

bool? isFileSize(FFUploadedFile? uploadedfiles) {
  if (uploadedfiles != null && uploadedfiles.bytes != null) {
    int fileBytes = uploadedfiles.bytes!.lengthInBytes;

    if (fileBytes <= 500 * 1024) {
      return true;
    }
    return false;
  }

  return null;
}

dynamic architectFeedbackFormJsonFormat(
  String? architectName,
  String? inspectionStartedDate,
  String? propertyTitle,
  String? flatHouseName,
  String? propertyType,
  String? flatHouseVillanumber,
  String? nearbyLandmark,
  String? streetAddress,
  String? locality,
  String? city,
  String? state,
  String? pinCode,
  String? country,
  String? propertyAgeYears,
  String? propertyAgeMonths,
  String? exteriorDesign,
  String? interiorDesign,
  String? safetyForSlipResistance,
  String? fireExits,
  String? livingComfort,
  String? pestAndInsectControl,
  String? ventilation,
  String? flowOfSpaces,
  List<String>? specifyRoomNameAndSize,
  String? innovativeElementsForBuildingDesigns,
  String? innovativeElementsComments,
  String? foundation,
  String? framing,
  String? loadBearingElements,
  String? structuralConsiderationComments,
  String? energyEfficiency,
  String? sustainableMaterialUse,
  String? buildingPractices,
  String? sustainabilityImpactComments,
  String? longitivityOfMaterials,
  String? easeOfMaintenance,
  String? maintainanceComments,
  String? complianceBuildingcodes,
  String? accessibilityPeopleWithDisabilities,
  String? workManship,
  String? materialQuality,
  String? electricalSystems,
  String? plumbingSystems,
  String? hvacSystems,
  List<String>? electricalSystemRenovation,
  List<String>? plumbingSystemRenovation,
  List<String>? hvacSystemRenovation,
  List<String>? floaringRenovation,
  List<String>? furnishingRenovation,
  String? architecturalPlanComments,
  String? estimatedBudgetAndTimeline,
  List<String>? costSavingMeasures,
  String? costSavingComments,
  String? ownerApproval,
  String? overallRating,
  String? overallAssessementComments,
  List<String>? ceilingRenovation,
) {
  var architectFeedback = {
    "Architect name": architectName,
    "Inspection Started Date": inspectionStartedDate,
    "Property Details": [
      {
        "Property Information": [
          {"Property Title": propertyTitle},
          {
            "Property Address": [
              {"Flat,house name": flatHouseName},
              {"Property Type": propertyType},
              {"Flat/House/Villa number": flatHouseVillanumber},
              {"Nearby landmark": nearbyLandmark},
              {"Strreet address": streetAddress},
              {"Locality": locality},
              {"City/Town": city},
              {"State": state},
              {"PIN Code": pinCode},
              {"Country": country}
            ]
          },
          {
            "Property age": [
              {"Years": propertyAgeYears},
              {"Months": propertyAgeMonths}
            ]
          },
          {
            "Rate the aesthetic appeal of thr building's design": [
              {"Exterior design": exteriorDesign},
              {"Interior design": interiorDesign}
            ]
          }
        ],
        "Functional": [
          {"Safety for slip resistance": safetyForSlipResistance},
          {"Fire exits": fireExits},
          {"Living comfort": livingComfort},
          {"Pest and Insect control": pestAndInsectControl},
          {"Lighting and ventilation": ventilation}
        ],
        "Spatial Layout": [
          {"Flow of spaces": flowOfSpaces},
          {"Specify Room Size (in sqft)": specifyRoomNameAndSize}
        ],
        "Innovation and Creativity": [
          {
            "Identify any innovative or creative elements in the building's design or construction":
                innovativeElementsForBuildingDesigns
          },
          {"Comments/Notes": innovativeElementsComments}
        ]
      }
    ],
    "Structural Considerations": [
      {
        "Structural Integrity": [
          {"Foundation": foundation},
          {"Framing": framing},
          {"Load Bearing Elements": loadBearingElements},
          {"Comments/Notes": structuralConsiderationComments}
        ]
      },
      {
        "Sustainability and Environmental Impact": [
          {"Energy Efficiency": energyEfficiency},
          {"Use of Sustainable Material": sustainableMaterialUse},
          {"Green Building Practices": buildingPractices},
          {"Comments/Notes": sustainabilityImpactComments}
        ]
      },
      {
        "Maintenance and Durability": [
          {"Longitivity of Materials": longitivityOfMaterials},
          {"Ease of maintenance": easeOfMaintenance},
          {"Comments/Notes": maintainanceComments}
        ]
      }
    ],
    "Compliance Requirements": [
      {
        "Safety Accessibility": [
          {"Compliance with Building codes": complianceBuildingcodes},
          {
            "Accessibility for the people with Disabilities":
                accessibilityPeopleWithDisabilities
          }
        ]
      },
      {
        "Construction Quality": [
          {"Workmanship": workManship},
          {"Material Quality": materialQuality}
        ]
      }
    ],
    "MEP": [
      {
        "Mechanical, Electrical and Plumbing (MEP) Systems": [
          {"Electrical Systems": electricalSystems},
          {"Plumbing Systems": plumbingSystems},
          {"HVAC Systems": hvacSystems}
        ]
      },
      {
        "Renovation Scope": [
          {"Electrical System": electricalSystemRenovation},
          {"Plumbing System": plumbingSystemRenovation},
          {"HVAC System": hvacSystemRenovation},
          {"Flooring renovation": floaringRenovation},
          {"Ceiling renovation": ceilingRenovation},
          {"Furnishing renovation": furnishingRenovation}
        ]
      }
    ],
    "Architectural Plan": [
      {"Comments/Notes": architecturalPlanComments}
    ],
    "Renovation Timelines and Budget": [
      {
        "Property Renovation approximate estimated budget and Timeline (According to market value)":
            estimatedBudgetAndTimeline
      },
      {"Cost-saving measures": costSavingMeasures},
      {"Comments/Notes": costSavingComments}
    ],
    "Owner Approval for Renovation": [
      {"Owner Approval": ownerApproval}
    ],
    "Overall Assessement": [
      {"Overall rating of the building's architecture": overallRating},
      {"Comments/Notes": overallAssessementComments}
    ]
  };

  return architectFeedback;
}

List<dynamic>? architectFeedbackFileArray(
  String? propertyPlan,
  FFUploadedFile? uploadedPropertyPlan,
  String? architectPlan,
  FFUploadedFile? uploadedArchitectPlan,
) {
  var fileArray = [];

  if (uploadedPropertyPlan != null) {
    String? fileName = uploadedPropertyPlan.name;

    fileArray.add({"key": propertyPlan, "fileName": fileName});
  }

  if (uploadedArchitectPlan != null) {
    String? fileName = uploadedArchitectPlan.name;

    fileArray.add({"key": architectPlan, "fileName": fileName});
  }

  return fileArray;
}

bool? getBoolFromJson(String? sharedBookingsAllowed) {
  bool? isBool;
  if (sharedBookingsAllowed!.toLowerCase() == 'true') {
    return isBool = true;
  } else if (sharedBookingsAllowed.toLowerCase() == 'false') {
    return isBool = false;
  }
  return isBool;
}

double getEntirePropertyPrice(
  int days,
  double price,
) {
  return days * price;
}

List<DateTime>? splitPartialDates(String? partiallyBookedDates) {
  List<DateTime> dates = [];

  if (partiallyBookedDates != null &&
      partiallyBookedDates.isNotEmpty &&
      partiallyBookedDates.length > 3) {
    var decode = json.decode(partiallyBookedDates);
    // print("Booked DatesAndRooms : $decode");
    List<String> separatedDateRanges = decode.whereType<String>().toList();
    // Process each date range
    for (String rangeStr in separatedDateRanges) {
      // Split by '$' to separate the dates from the delimiter
      List<String> parts = rangeStr.split('\$');
      String datePart = parts[0];
      String delimiter = parts[1];

      // Check if it is a single date or a date range
      if (datePart.contains(':')) {
        // It's a date range
        List<String> dateParts = datePart.split(':');
        DateTime startDate = DateTime.parse(dateParts[0]);
        // print("Start Date : $startDate");
        DateTime endDate = DateTime.parse(dateParts[1]);
        // print("End Date : $startDate");
        // Generate all dates in the range
        for (DateTime date = startDate;
            date.isBefore(endDate.add(Duration(days: 1)));
            date = date.add(Duration(days: 1))) {
          dates.add(date);
        }
      } else {
        // It's a single date
        dates.add(DateTime.parse(datePart));
      }
    }
  }

  // print("List of Dates : $dates");

  return dates;
}

int? getIntFromJSon(String? string) {
  int result = int.parse(string!);

  return result;
}
