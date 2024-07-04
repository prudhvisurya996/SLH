import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _placeTypeSelection =
          prefs.getString('ff_placeTypeSelection') ?? _placeTypeSelection;
    });
    _safeInit(() {
      _selectedCountryCode =
          prefs.getString('ff_selectedCountryCode') ?? _selectedCountryCode;
    });
    _safeInit(() {
      _selectedNotifications =
          prefs.getString('ff_selectedNotifications') ?? _selectedNotifications;
    });
    _safeInit(() {
      _selectedTax = prefs.getString('ff_selectedTax') ?? _selectedTax;
    });
    _safeInit(() {
      _Amenities = prefs.getStringList('ff_Amenities') ?? _Amenities;
    });
    _safeInit(() {
      _SavedRoute = prefs.getString('ff_SavedRoute') ?? _SavedRoute;
    });
    _safeInit(() {
      _accessToken = prefs.getString('ff_accessToken') ?? _accessToken;
    });
    _safeInit(() {
      _selectedAMNames =
          prefs.getStringList('ff_selectedAMNames') ?? _selectedAMNames;
    });
    _safeInit(() {
      _refreshToken = prefs.getString('ff_refreshToken') ?? _refreshToken;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userData')) {
        try {
          final serializedData = prefs.getString('ff_userData') ?? '{}';
          _userData =
              UserDataStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _SelectedAmenities = prefs
              .getStringList('ff_SelectedAmenities')
              ?.map(int.parse)
              .toList() ??
          _SelectedAmenities;
    });
    _safeInit(() {
      _webHostSaveRoute =
          prefs.getInt('ff_webHostSaveRoute') ?? _webHostSaveRoute;
    });
    _safeInit(() {
      _launchApp = prefs.containsKey('ff_launchApp')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_launchApp')!)
          : _launchApp;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _placeTypeSelection = '';
  String get placeTypeSelection => _placeTypeSelection;
  set placeTypeSelection(String value) {
    _placeTypeSelection = value;
    prefs.setString('ff_placeTypeSelection', value);
  }

  List<dynamic> _messageList = [
    jsonDecode(
        '{\"title\":\"Edith Flores\",\"description\":\"Deciphering marketing lingo for small…\",\"time\":\"10:27 AM\",\"img\":\"https://sm.askmen.com/t/askmen_in/article/f/facebook-p/facebook-profile-picture-affects-chances-of-gettin_fr3n.1200.jpg\",\"seen\":false}'),
    jsonDecode(
        '{\"title\":\"Juan Ferguson\",\"description\":\"Alfredo and who on earth was he cap…\",\"time\":\"May 13\",\"seen\":false,\"img\":\"https://www.tag-group.com/application/files/6715/3994/2261/group_people_careers_thumbnail.jpg\"}'),
    jsonDecode(
        '{\"title\":\"Mollie Houston\",\"description\":\"Lasik surgery frequently asked quest…\",\"time\":\"May 8\",\"seen\":false,\"img\":\"https://th.bing.com/th/id/OIP.XxlYGeNOvY6y0K9DvPeoHgHaLI?pid=ImgDet&rs=1\"}'),
    jsonDecode(
        '{\"title\":\"Joshua Norman\",\"description\":\"Break through self doubt and fear are…\",\"time\":\"Apr 30\",\"seen\":true}'),
    jsonDecode(
        '{\"title\":\"Owen Miles\",\"description\":\"Deciphering marketing lingo for small…\",\"time\":\"Apr 30\",\"seen\":true}'),
    jsonDecode(
        '{\"title\":\"Maude French\",\"description\":\"Alfredo and who on earth was he cap…\",\"time\":\"Apr 30\",\"seen\":true}'),
    jsonDecode(
        '{\"title\":\"Landon Mason\",\"description\":\"Lasik surgery frequently asked quest…\",\"time\":\"Apr 30\",\"seen\":true}'),
    jsonDecode(
        '{\"title\":\"Lottie Bowers\",\"description\":\"Break through self doubt and fear are…\",\"time\":\"Apr 30\",\"seen\":true}'),
    jsonDecode(
        '{\"title\":\"Juan Ferguson\",\"description\":\"Alfredo and who on earth was he cap…\",\"time\":\"May 13\",\"seen\":false,\"img\":\"https://www.tag-group.com/application/files/6715/3994/2261/group_people_careers_thumbnail.jpg\"}'),
    jsonDecode(
        '{\"title\":\"Mollie Houston\",\"description\":\"Lasik surgery frequently asked quest…\",\"time\":\"May 8\",\"seen\":false,\"img\":\"https://th.bing.com/th/id/OIP.XxlYGeNOvY6y0K9DvPeoHgHaLI?pid=ImgDet&rs=1\"}'),
    jsonDecode(
        '{\"title\":\"Edith Flores\",\"description\":\"Deciphering marketing lingo for small…\",\"time\":\"10:27 AM\",\"img\":\"https://sm.askmen.com/t/askmen_in/article/f/facebook-p/facebook-profile-picture-affects-chances-of-gettin_fr3n.1200.jpg\",\"seen\":false}')
  ];
  List<dynamic> get messageList => _messageList;
  set messageList(List<dynamic> value) {
    _messageList = value;
  }

  void addToMessageList(dynamic value) {
    messageList.add(value);
  }

  void removeFromMessageList(dynamic value) {
    messageList.remove(value);
  }

  void removeAtIndexFromMessageList(int index) {
    messageList.removeAt(index);
  }

  void updateMessageListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    messageList[index] = updateFn(_messageList[index]);
  }

  void insertAtIndexInMessageList(int index, dynamic value) {
    messageList.insert(index, value);
  }

  bool _testclick = false;
  bool get testclick => _testclick;
  set testclick(bool value) {
    _testclick = value;
  }

  bool _wishlistClicked = false;
  bool get wishlistClicked => _wishlistClicked;
  set wishlistClicked(bool value) {
    _wishlistClicked = value;
  }

  List<dynamic> _notificationsListData = [
    jsonDecode(
        '{\"type\":\"Flight\",\"address1\":\"Lisbon Portela Airport\",\"address2\":\"- Lajes Airport\"}'),
    jsonDecode(
        '{\"type\":\"Car Travel\",\"address1\":\"Lajes Airport\",\"address2\":\"-Sao Roque do Pico\"}')
  ];
  List<dynamic> get notificationsListData => _notificationsListData;
  set notificationsListData(List<dynamic> value) {
    _notificationsListData = value;
  }

  void addToNotificationsListData(dynamic value) {
    notificationsListData.add(value);
  }

  void removeFromNotificationsListData(dynamic value) {
    notificationsListData.remove(value);
  }

  void removeAtIndexFromNotificationsListData(int index) {
    notificationsListData.removeAt(index);
  }

  void updateNotificationsListDataAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    notificationsListData[index] = updateFn(_notificationsListData[index]);
  }

  void insertAtIndexInNotificationsListData(int index, dynamic value) {
    notificationsListData.insert(index, value);
  }

  String _selectedCountryCode = '';
  String get selectedCountryCode => _selectedCountryCode;
  set selectedCountryCode(String value) {
    _selectedCountryCode = value;
    prefs.setString('ff_selectedCountryCode', value);
  }

  List<dynamic> _regionCodes = [
    jsonDecode(
        '[{\"name\":\"Afghanistan\",\"alpha-2\":\"AF\",\"alpha-3\":\"AFG\",\"country-code\":\"004\",\"iso_3166-2\":\"ISO 3166-2:AF\",\"region\":\"Asia\",\"sub-region\":\"Southern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"034\",\"intermediate-region-code\":\"\"},{\"name\":\"Åland Islands\",\"alpha-2\":\"AX\",\"alpha-3\":\"ALA\",\"country-code\":\"248\",\"iso_3166-2\":\"ISO 3166-2:AX\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"Albania\",\"alpha-2\":\"AL\",\"alpha-3\":\"ALB\",\"country-code\":\"008\",\"iso_3166-2\":\"ISO 3166-2:AL\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Algeria\",\"alpha-2\":\"DZ\",\"alpha-3\":\"DZA\",\"country-code\":\"012\",\"iso_3166-2\":\"ISO 3166-2:DZ\",\"region\":\"Africa\",\"sub-region\":\"Northern Africa\",\"intermediate-region\":\"\",\"region-code\":\"002\",\"sub-region-code\":\"015\",\"intermediate-region-code\":\"\"},{\"name\":\"American Samoa\",\"alpha-2\":\"AS\",\"alpha-3\":\"ASM\",\"country-code\":\"016\",\"iso_3166-2\":\"ISO 3166-2:AS\",\"region\":\"Oceania\",\"sub-region\":\"Polynesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"061\",\"intermediate-region-code\":\"\"},{\"name\":\"Andorra\",\"alpha-2\":\"AD\",\"alpha-3\":\"AND\",\"country-code\":\"020\",\"iso_3166-2\":\"ISO 3166-2:AD\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Angola\",\"alpha-2\":\"AO\",\"alpha-3\":\"AGO\",\"country-code\":\"024\",\"iso_3166-2\":\"ISO 3166-2:AO\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Middle Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"017\"},{\"name\":\"Anguilla\",\"alpha-2\":\"AI\",\"alpha-3\":\"AIA\",\"country-code\":\"660\",\"iso_3166-2\":\"ISO 3166-2:AI\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Antarctica\",\"alpha-2\":\"AQ\",\"alpha-3\":\"ATA\",\"country-code\":\"010\",\"iso_3166-2\":\"ISO 3166-2:AQ\",\"region\":\"\",\"sub-region\":\"\",\"intermediate-region\":\"\",\"region-code\":\"\",\"sub-region-code\":\"\",\"intermediate-region-code\":\"\"},{\"name\":\"Antigua and Barbuda\",\"alpha-2\":\"AG\",\"alpha-3\":\"ATG\",\"country-code\":\"028\",\"iso_3166-2\":\"ISO 3166-2:AG\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Argentina\",\"alpha-2\":\"AR\",\"alpha-3\":\"ARG\",\"country-code\":\"032\",\"iso_3166-2\":\"ISO 3166-2:AR\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"Armenia\",\"alpha-2\":\"AM\",\"alpha-3\":\"ARM\",\"country-code\":\"051\",\"iso_3166-2\":\"ISO 3166-2:AM\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Aruba\",\"alpha-2\":\"AW\",\"alpha-3\":\"ABW\",\"country-code\":\"533\",\"iso_3166-2\":\"ISO 3166-2:AW\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Australia\",\"alpha-2\":\"AU\",\"alpha-3\":\"AUS\",\"country-code\":\"036\",\"iso_3166-2\":\"ISO 3166-2:AU\",\"region\":\"Oceania\",\"sub-region\":\"Australia and New Zealand\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"053\",\"intermediate-region-code\":\"\"},{\"name\":\"Austria\",\"alpha-2\":\"AT\",\"alpha-3\":\"AUT\",\"country-code\":\"040\",\"iso_3166-2\":\"ISO 3166-2:AT\",\"region\":\"Europe\",\"sub-region\":\"Western Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"155\",\"intermediate-region-code\":\"\"},{\"name\":\"Azerbaijan\",\"alpha-2\":\"AZ\",\"alpha-3\":\"AZE\",\"country-code\":\"031\",\"iso_3166-2\":\"ISO 3166-2:AZ\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Bahamas\",\"alpha-2\":\"BS\",\"alpha-3\":\"BHS\",\"country-code\":\"044\",\"iso_3166-2\":\"ISO 3166-2:BS\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Bahrain\",\"alpha-2\":\"BH\",\"alpha-3\":\"BHR\",\"country-code\":\"048\",\"iso_3166-2\":\"ISO 3166-2:BH\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Bangladesh\",\"alpha-2\":\"BD\",\"alpha-3\":\"BGD\",\"country-code\":\"050\",\"iso_3166-2\":\"ISO 3166-2:BD\",\"region\":\"Asia\",\"sub-region\":\"Southern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"034\",\"intermediate-region-code\":\"\"},{\"name\":\"Barbados\",\"alpha-2\":\"BB\",\"alpha-3\":\"BRB\",\"country-code\":\"052\",\"iso_3166-2\":\"ISO 3166-2:BB\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Belarus\",\"alpha-2\":\"BY\",\"alpha-3\":\"BLR\",\"country-code\":\"112\",\"iso_3166-2\":\"ISO 3166-2:BY\",\"region\":\"Europe\",\"sub-region\":\"Eastern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"151\",\"intermediate-region-code\":\"\"},{\"name\":\"Belgium\",\"alpha-2\":\"BE\",\"alpha-3\":\"BEL\",\"country-code\":\"056\",\"iso_3166-2\":\"ISO 3166-2:BE\",\"region\":\"Europe\",\"sub-region\":\"Western Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"155\",\"intermediate-region-code\":\"\"},{\"name\":\"Belize\",\"alpha-2\":\"BZ\",\"alpha-3\":\"BLZ\",\"country-code\":\"084\",\"iso_3166-2\":\"ISO 3166-2:BZ\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Central America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"013\"},{\"name\":\"Benin\",\"alpha-2\":\"BJ\",\"alpha-3\":\"BEN\",\"country-code\":\"204\",\"iso_3166-2\":\"ISO 3166-2:BJ\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Bermuda\",\"alpha-2\":\"BM\",\"alpha-3\":\"BMU\",\"country-code\":\"060\",\"iso_3166-2\":\"ISO 3166-2:BM\",\"region\":\"Americas\",\"sub-region\":\"Northern America\",\"intermediate-region\":\"\",\"region-code\":\"019\",\"sub-region-code\":\"021\",\"intermediate-region-code\":\"\"},{\"name\":\"Bhutan\",\"alpha-2\":\"BT\",\"alpha-3\":\"BTN\",\"country-code\":\"064\",\"iso_3166-2\":\"ISO 3166-2:BT\",\"region\":\"Asia\",\"sub-region\":\"Southern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"034\",\"intermediate-region-code\":\"\"},{\"name\":\"Bolivia (Plurinational State of)\",\"alpha-2\":\"BO\",\"alpha-3\":\"BOL\",\"country-code\":\"068\",\"iso_3166-2\":\"ISO 3166-2:BO\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"Bonaire, Sint Eustatius and Saba\",\"alpha-2\":\"BQ\",\"alpha-3\":\"BES\",\"country-code\":\"535\",\"iso_3166-2\":\"ISO 3166-2:BQ\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Bosnia and Herzegovina\",\"alpha-2\":\"BA\",\"alpha-3\":\"BIH\",\"country-code\":\"070\",\"iso_3166-2\":\"ISO 3166-2:BA\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Botswana\",\"alpha-2\":\"BW\",\"alpha-3\":\"BWA\",\"country-code\":\"072\",\"iso_3166-2\":\"ISO 3166-2:BW\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Southern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"018\"},{\"name\":\"Bouvet Island\",\"alpha-2\":\"BV\",\"alpha-3\":\"BVT\",\"country-code\":\"074\",\"iso_3166-2\":\"ISO 3166-2:BV\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"Brazil\",\"alpha-2\":\"BR\",\"alpha-3\":\"BRA\",\"country-code\":\"076\",\"iso_3166-2\":\"ISO 3166-2:BR\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"British Indian Ocean Territory\",\"alpha-2\":\"IO\",\"alpha-3\":\"IOT\",\"country-code\":\"086\",\"iso_3166-2\":\"ISO 3166-2:IO\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Brunei Darussalam\",\"alpha-2\":\"BN\",\"alpha-3\":\"BRN\",\"country-code\":\"096\",\"iso_3166-2\":\"ISO 3166-2:BN\",\"region\":\"Asia\",\"sub-region\":\"South-eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"035\",\"intermediate-region-code\":\"\"},{\"name\":\"Bulgaria\",\"alpha-2\":\"BG\",\"alpha-3\":\"BGR\",\"country-code\":\"100\",\"iso_3166-2\":\"ISO 3166-2:BG\",\"region\":\"Europe\",\"sub-region\":\"Eastern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"151\",\"intermediate-region-code\":\"\"},{\"name\":\"Burkina Faso\",\"alpha-2\":\"BF\",\"alpha-3\":\"BFA\",\"country-code\":\"854\",\"iso_3166-2\":\"ISO 3166-2:BF\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Burundi\",\"alpha-2\":\"BI\",\"alpha-3\":\"BDI\",\"country-code\":\"108\",\"iso_3166-2\":\"ISO 3166-2:BI\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Cabo Verde\",\"alpha-2\":\"CV\",\"alpha-3\":\"CPV\",\"country-code\":\"132\",\"iso_3166-2\":\"ISO 3166-2:CV\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Cambodia\",\"alpha-2\":\"KH\",\"alpha-3\":\"KHM\",\"country-code\":\"116\",\"iso_3166-2\":\"ISO 3166-2:KH\",\"region\":\"Asia\",\"sub-region\":\"South-eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"035\",\"intermediate-region-code\":\"\"},{\"name\":\"Cameroon\",\"alpha-2\":\"CM\",\"alpha-3\":\"CMR\",\"country-code\":\"120\",\"iso_3166-2\":\"ISO 3166-2:CM\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Middle Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"017\"},{\"name\":\"Canada\",\"alpha-2\":\"CA\",\"alpha-3\":\"CAN\",\"country-code\":\"124\",\"iso_3166-2\":\"ISO 3166-2:CA\",\"region\":\"Americas\",\"sub-region\":\"Northern America\",\"intermediate-region\":\"\",\"region-code\":\"019\",\"sub-region-code\":\"021\",\"intermediate-region-code\":\"\"},{\"name\":\"Cayman Islands\",\"alpha-2\":\"KY\",\"alpha-3\":\"CYM\",\"country-code\":\"136\",\"iso_3166-2\":\"ISO 3166-2:KY\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Central African Republic\",\"alpha-2\":\"CF\",\"alpha-3\":\"CAF\",\"country-code\":\"140\",\"iso_3166-2\":\"ISO 3166-2:CF\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Middle Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"017\"},{\"name\":\"Chad\",\"alpha-2\":\"TD\",\"alpha-3\":\"TCD\",\"country-code\":\"148\",\"iso_3166-2\":\"ISO 3166-2:TD\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Middle Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"017\"},{\"name\":\"Chile\",\"alpha-2\":\"CL\",\"alpha-3\":\"CHL\",\"country-code\":\"152\",\"iso_3166-2\":\"ISO 3166-2:CL\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"China\",\"alpha-2\":\"CN\",\"alpha-3\":\"CHN\",\"country-code\":\"156\",\"iso_3166-2\":\"ISO 3166-2:CN\",\"region\":\"Asia\",\"sub-region\":\"Eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"030\",\"intermediate-region-code\":\"\"},{\"name\":\"Christmas Island\",\"alpha-2\":\"CX\",\"alpha-3\":\"CXR\",\"country-code\":\"162\",\"iso_3166-2\":\"ISO 3166-2:CX\",\"region\":\"Oceania\",\"sub-region\":\"Australia and New Zealand\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"053\",\"intermediate-region-code\":\"\"},{\"name\":\"Cocos (Keeling) Islands\",\"alpha-2\":\"CC\",\"alpha-3\":\"CCK\",\"country-code\":\"166\",\"iso_3166-2\":\"ISO 3166-2:CC\",\"region\":\"Oceania\",\"sub-region\":\"Australia and New Zealand\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"053\",\"intermediate-region-code\":\"\"},{\"name\":\"Colombia\",\"alpha-2\":\"CO\",\"alpha-3\":\"COL\",\"country-code\":\"170\",\"iso_3166-2\":\"ISO 3166-2:CO\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"Comoros\",\"alpha-2\":\"KM\",\"alpha-3\":\"COM\",\"country-code\":\"174\",\"iso_3166-2\":\"ISO 3166-2:KM\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Congo\",\"alpha-2\":\"CG\",\"alpha-3\":\"COG\",\"country-code\":\"178\",\"iso_3166-2\":\"ISO 3166-2:CG\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Middle Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"017\"},{\"name\":\"Congo, Democratic Republic of the\",\"alpha-2\":\"CD\",\"alpha-3\":\"COD\",\"country-code\":\"180\",\"iso_3166-2\":\"ISO 3166-2:CD\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Middle Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"017\"},{\"name\":\"Cook Islands\",\"alpha-2\":\"CK\",\"alpha-3\":\"COK\",\"country-code\":\"184\",\"iso_3166-2\":\"ISO 3166-2:CK\",\"region\":\"Oceania\",\"sub-region\":\"Polynesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"061\",\"intermediate-region-code\":\"\"},{\"name\":\"Costa Rica\",\"alpha-2\":\"CR\",\"alpha-3\":\"CRI\",\"country-code\":\"188\",\"iso_3166-2\":\"ISO 3166-2:CR\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Central America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"013\"},{\"name\":\"Côte d\'Ivoire\",\"alpha-2\":\"CI\",\"alpha-3\":\"CIV\",\"country-code\":\"384\",\"iso_3166-2\":\"ISO 3166-2:CI\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Croatia\",\"alpha-2\":\"HR\",\"alpha-3\":\"HRV\",\"country-code\":\"191\",\"iso_3166-2\":\"ISO 3166-2:HR\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Cuba\",\"alpha-2\":\"CU\",\"alpha-3\":\"CUB\",\"country-code\":\"192\",\"iso_3166-2\":\"ISO 3166-2:CU\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Curaçao\",\"alpha-2\":\"CW\",\"alpha-3\":\"CUW\",\"country-code\":\"531\",\"iso_3166-2\":\"ISO 3166-2:CW\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Cyprus\",\"alpha-2\":\"CY\",\"alpha-3\":\"CYP\",\"country-code\":\"196\",\"iso_3166-2\":\"ISO 3166-2:CY\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Czechia\",\"alpha-2\":\"CZ\",\"alpha-3\":\"CZE\",\"country-code\":\"203\",\"iso_3166-2\":\"ISO 3166-2:CZ\",\"region\":\"Europe\",\"sub-region\":\"Eastern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"151\",\"intermediate-region-code\":\"\"},{\"name\":\"Denmark\",\"alpha-2\":\"DK\",\"alpha-3\":\"DNK\",\"country-code\":\"208\",\"iso_3166-2\":\"ISO 3166-2:DK\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"Djibouti\",\"alpha-2\":\"DJ\",\"alpha-3\":\"DJI\",\"country-code\":\"262\",\"iso_3166-2\":\"ISO 3166-2:DJ\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Dominica\",\"alpha-2\":\"DM\",\"alpha-3\":\"DMA\",\"country-code\":\"212\",\"iso_3166-2\":\"ISO 3166-2:DM\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Dominican Republic\",\"alpha-2\":\"DO\",\"alpha-3\":\"DOM\",\"country-code\":\"214\",\"iso_3166-2\":\"ISO 3166-2:DO\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Ecuador\",\"alpha-2\":\"EC\",\"alpha-3\":\"ECU\",\"country-code\":\"218\",\"iso_3166-2\":\"ISO 3166-2:EC\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"Egypt\",\"alpha-2\":\"EG\",\"alpha-3\":\"EGY\",\"country-code\":\"818\",\"iso_3166-2\":\"ISO 3166-2:EG\",\"region\":\"Africa\",\"sub-region\":\"Northern Africa\",\"intermediate-region\":\"\",\"region-code\":\"002\",\"sub-region-code\":\"015\",\"intermediate-region-code\":\"\"},{\"name\":\"El Salvador\",\"alpha-2\":\"SV\",\"alpha-3\":\"SLV\",\"country-code\":\"222\",\"iso_3166-2\":\"ISO 3166-2:SV\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Central America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"013\"},{\"name\":\"Equatorial Guinea\",\"alpha-2\":\"GQ\",\"alpha-3\":\"GNQ\",\"country-code\":\"226\",\"iso_3166-2\":\"ISO 3166-2:GQ\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Middle Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"017\"},{\"name\":\"Eritrea\",\"alpha-2\":\"ER\",\"alpha-3\":\"ERI\",\"country-code\":\"232\",\"iso_3166-2\":\"ISO 3166-2:ER\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Estonia\",\"alpha-2\":\"EE\",\"alpha-3\":\"EST\",\"country-code\":\"233\",\"iso_3166-2\":\"ISO 3166-2:EE\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"Eswatini\",\"alpha-2\":\"SZ\",\"alpha-3\":\"SWZ\",\"country-code\":\"748\",\"iso_3166-2\":\"ISO 3166-2:SZ\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Southern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"018\"},{\"name\":\"Ethiopia\",\"alpha-2\":\"ET\",\"alpha-3\":\"ETH\",\"country-code\":\"231\",\"iso_3166-2\":\"ISO 3166-2:ET\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Falkland Islands (Malvinas)\",\"alpha-2\":\"FK\",\"alpha-3\":\"FLK\",\"country-code\":\"238\",\"iso_3166-2\":\"ISO 3166-2:FK\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"Faroe Islands\",\"alpha-2\":\"FO\",\"alpha-3\":\"FRO\",\"country-code\":\"234\",\"iso_3166-2\":\"ISO 3166-2:FO\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"Fiji\",\"alpha-2\":\"FJ\",\"alpha-3\":\"FJI\",\"country-code\":\"242\",\"iso_3166-2\":\"ISO 3166-2:FJ\",\"region\":\"Oceania\",\"sub-region\":\"Melanesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"054\",\"intermediate-region-code\":\"\"},{\"name\":\"Finland\",\"alpha-2\":\"FI\",\"alpha-3\":\"FIN\",\"country-code\":\"246\",\"iso_3166-2\":\"ISO 3166-2:FI\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"France\",\"alpha-2\":\"FR\",\"alpha-3\":\"FRA\",\"country-code\":\"250\",\"iso_3166-2\":\"ISO 3166-2:FR\",\"region\":\"Europe\",\"sub-region\":\"Western Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"155\",\"intermediate-region-code\":\"\"},{\"name\":\"French Guiana\",\"alpha-2\":\"GF\",\"alpha-3\":\"GUF\",\"country-code\":\"254\",\"iso_3166-2\":\"ISO 3166-2:GF\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"French Polynesia\",\"alpha-2\":\"PF\",\"alpha-3\":\"PYF\",\"country-code\":\"258\",\"iso_3166-2\":\"ISO 3166-2:PF\",\"region\":\"Oceania\",\"sub-region\":\"Polynesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"061\",\"intermediate-region-code\":\"\"},{\"name\":\"French Southern Territories\",\"alpha-2\":\"TF\",\"alpha-3\":\"ATF\",\"country-code\":\"260\",\"iso_3166-2\":\"ISO 3166-2:TF\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Gabon\",\"alpha-2\":\"GA\",\"alpha-3\":\"GAB\",\"country-code\":\"266\",\"iso_3166-2\":\"ISO 3166-2:GA\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Middle Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"017\"},{\"name\":\"Gambia\",\"alpha-2\":\"GM\",\"alpha-3\":\"GMB\",\"country-code\":\"270\",\"iso_3166-2\":\"ISO 3166-2:GM\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Georgia\",\"alpha-2\":\"GE\",\"alpha-3\":\"GEO\",\"country-code\":\"268\",\"iso_3166-2\":\"ISO 3166-2:GE\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Germany\",\"alpha-2\":\"DE\",\"alpha-3\":\"DEU\",\"country-code\":\"276\",\"iso_3166-2\":\"ISO 3166-2:DE\",\"region\":\"Europe\",\"sub-region\":\"Western Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"155\",\"intermediate-region-code\":\"\"},{\"name\":\"Ghana\",\"alpha-2\":\"GH\",\"alpha-3\":\"GHA\",\"country-code\":\"288\",\"iso_3166-2\":\"ISO 3166-2:GH\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Gibraltar\",\"alpha-2\":\"GI\",\"alpha-3\":\"GIB\",\"country-code\":\"292\",\"iso_3166-2\":\"ISO 3166-2:GI\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Greece\",\"alpha-2\":\"GR\",\"alpha-3\":\"GRC\",\"country-code\":\"300\",\"iso_3166-2\":\"ISO 3166-2:GR\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Greenland\",\"alpha-2\":\"GL\",\"alpha-3\":\"GRL\",\"country-code\":\"304\",\"iso_3166-2\":\"ISO 3166-2:GL\",\"region\":\"Americas\",\"sub-region\":\"Northern America\",\"intermediate-region\":\"\",\"region-code\":\"019\",\"sub-region-code\":\"021\",\"intermediate-region-code\":\"\"},{\"name\":\"Grenada\",\"alpha-2\":\"GD\",\"alpha-3\":\"GRD\",\"country-code\":\"308\",\"iso_3166-2\":\"ISO 3166-2:GD\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Guadeloupe\",\"alpha-2\":\"GP\",\"alpha-3\":\"GLP\",\"country-code\":\"312\",\"iso_3166-2\":\"ISO 3166-2:GP\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Guam\",\"alpha-2\":\"GU\",\"alpha-3\":\"GUM\",\"country-code\":\"316\",\"iso_3166-2\":\"ISO 3166-2:GU\",\"region\":\"Oceania\",\"sub-region\":\"Micronesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"057\",\"intermediate-region-code\":\"\"},{\"name\":\"Guatemala\",\"alpha-2\":\"GT\",\"alpha-3\":\"GTM\",\"country-code\":\"320\",\"iso_3166-2\":\"ISO 3166-2:GT\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Central America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"013\"},{\"name\":\"Guernsey\",\"alpha-2\":\"GG\",\"alpha-3\":\"GGY\",\"country-code\":\"831\",\"iso_3166-2\":\"ISO 3166-2:GG\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"Channel Islands\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"830\"},{\"name\":\"Guinea\",\"alpha-2\":\"GN\",\"alpha-3\":\"GIN\",\"country-code\":\"324\",\"iso_3166-2\":\"ISO 3166-2:GN\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Guinea-Bissau\",\"alpha-2\":\"GW\",\"alpha-3\":\"GNB\",\"country-code\":\"624\",\"iso_3166-2\":\"ISO 3166-2:GW\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Guyana\",\"alpha-2\":\"GY\",\"alpha-3\":\"GUY\",\"country-code\":\"328\",\"iso_3166-2\":\"ISO 3166-2:GY\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"Haiti\",\"alpha-2\":\"HT\",\"alpha-3\":\"HTI\",\"country-code\":\"332\",\"iso_3166-2\":\"ISO 3166-2:HT\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Heard Island and McDonald Islands\",\"alpha-2\":\"HM\",\"alpha-3\":\"HMD\",\"country-code\":\"334\",\"iso_3166-2\":\"ISO 3166-2:HM\",\"region\":\"Oceania\",\"sub-region\":\"Australia and New Zealand\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"053\",\"intermediate-region-code\":\"\"},{\"name\":\"Holy See\",\"alpha-2\":\"VA\",\"alpha-3\":\"VAT\",\"country-code\":\"336\",\"iso_3166-2\":\"ISO 3166-2:VA\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Honduras\",\"alpha-2\":\"HN\",\"alpha-3\":\"HND\",\"country-code\":\"340\",\"iso_3166-2\":\"ISO 3166-2:HN\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Central America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"013\"},{\"name\":\"Hong Kong\",\"alpha-2\":\"HK\",\"alpha-3\":\"HKG\",\"country-code\":\"344\",\"iso_3166-2\":\"ISO 3166-2:HK\",\"region\":\"Asia\",\"sub-region\":\"Eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"030\",\"intermediate-region-code\":\"\"},{\"name\":\"Hungary\",\"alpha-2\":\"HU\",\"alpha-3\":\"HUN\",\"country-code\":\"348\",\"iso_3166-2\":\"ISO 3166-2:HU\",\"region\":\"Europe\",\"sub-region\":\"Eastern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"151\",\"intermediate-region-code\":\"\"},{\"name\":\"Iceland\",\"alpha-2\":\"IS\",\"alpha-3\":\"ISL\",\"country-code\":\"352\",\"iso_3166-2\":\"ISO 3166-2:IS\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"India\",\"alpha-2\":\"IN\",\"alpha-3\":\"IND\",\"country-code\":\"356\",\"iso_3166-2\":\"ISO 3166-2:IN\",\"region\":\"Asia\",\"sub-region\":\"Southern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"034\",\"intermediate-region-code\":\"\"},{\"name\":\"Indonesia\",\"alpha-2\":\"ID\",\"alpha-3\":\"IDN\",\"country-code\":\"360\",\"iso_3166-2\":\"ISO 3166-2:ID\",\"region\":\"Asia\",\"sub-region\":\"South-eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"035\",\"intermediate-region-code\":\"\"},{\"name\":\"Iran (Islamic Republic of)\",\"alpha-2\":\"IR\",\"alpha-3\":\"IRN\",\"country-code\":\"364\",\"iso_3166-2\":\"ISO 3166-2:IR\",\"region\":\"Asia\",\"sub-region\":\"Southern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"034\",\"intermediate-region-code\":\"\"},{\"name\":\"Iraq\",\"alpha-2\":\"IQ\",\"alpha-3\":\"IRQ\",\"country-code\":\"368\",\"iso_3166-2\":\"ISO 3166-2:IQ\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Ireland\",\"alpha-2\":\"IE\",\"alpha-3\":\"IRL\",\"country-code\":\"372\",\"iso_3166-2\":\"ISO 3166-2:IE\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"Isle of Man\",\"alpha-2\":\"IM\",\"alpha-3\":\"IMN\",\"country-code\":\"833\",\"iso_3166-2\":\"ISO 3166-2:IM\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"Israel\",\"alpha-2\":\"IL\",\"alpha-3\":\"ISR\",\"country-code\":\"376\",\"iso_3166-2\":\"ISO 3166-2:IL\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Italy\",\"alpha-2\":\"IT\",\"alpha-3\":\"ITA\",\"country-code\":\"380\",\"iso_3166-2\":\"ISO 3166-2:IT\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Jamaica\",\"alpha-2\":\"JM\",\"alpha-3\":\"JAM\",\"country-code\":\"388\",\"iso_3166-2\":\"ISO 3166-2:JM\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Japan\",\"alpha-2\":\"JP\",\"alpha-3\":\"JPN\",\"country-code\":\"392\",\"iso_3166-2\":\"ISO 3166-2:JP\",\"region\":\"Asia\",\"sub-region\":\"Eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"030\",\"intermediate-region-code\":\"\"},{\"name\":\"Jersey\",\"alpha-2\":\"JE\",\"alpha-3\":\"JEY\",\"country-code\":\"832\",\"iso_3166-2\":\"ISO 3166-2:JE\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"Channel Islands\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"830\"},{\"name\":\"Jordan\",\"alpha-2\":\"JO\",\"alpha-3\":\"JOR\",\"country-code\":\"400\",\"iso_3166-2\":\"ISO 3166-2:JO\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Kazakhstan\",\"alpha-2\":\"KZ\",\"alpha-3\":\"KAZ\",\"country-code\":\"398\",\"iso_3166-2\":\"ISO 3166-2:KZ\",\"region\":\"Asia\",\"sub-region\":\"Central Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"143\",\"intermediate-region-code\":\"\"},{\"name\":\"Kenya\",\"alpha-2\":\"KE\",\"alpha-3\":\"KEN\",\"country-code\":\"404\",\"iso_3166-2\":\"ISO 3166-2:KE\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Kiribati\",\"alpha-2\":\"KI\",\"alpha-3\":\"KIR\",\"country-code\":\"296\",\"iso_3166-2\":\"ISO 3166-2:KI\",\"region\":\"Oceania\",\"sub-region\":\"Micronesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"057\",\"intermediate-region-code\":\"\"},{\"name\":\"Korea (Democratic People\'s Republic of)\",\"alpha-2\":\"KP\",\"alpha-3\":\"PRK\",\"country-code\":\"408\",\"iso_3166-2\":\"ISO 3166-2:KP\",\"region\":\"Asia\",\"sub-region\":\"Eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"030\",\"intermediate-region-code\":\"\"},{\"name\":\"Korea, Republic of\",\"alpha-2\":\"KR\",\"alpha-3\":\"KOR\",\"country-code\":\"410\",\"iso_3166-2\":\"ISO 3166-2:KR\",\"region\":\"Asia\",\"sub-region\":\"Eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"030\",\"intermediate-region-code\":\"\"},{\"name\":\"Kuwait\",\"alpha-2\":\"KW\",\"alpha-3\":\"KWT\",\"country-code\":\"414\",\"iso_3166-2\":\"ISO 3166-2:KW\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Kyrgyzstan\",\"alpha-2\":\"KG\",\"alpha-3\":\"KGZ\",\"country-code\":\"417\",\"iso_3166-2\":\"ISO 3166-2:KG\",\"region\":\"Asia\",\"sub-region\":\"Central Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"143\",\"intermediate-region-code\":\"\"},{\"name\":\"Lao People\'s Democratic Republic\",\"alpha-2\":\"LA\",\"alpha-3\":\"LAO\",\"country-code\":\"418\",\"iso_3166-2\":\"ISO 3166-2:LA\",\"region\":\"Asia\",\"sub-region\":\"South-eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"035\",\"intermediate-region-code\":\"\"},{\"name\":\"Latvia\",\"alpha-2\":\"LV\",\"alpha-3\":\"LVA\",\"country-code\":\"428\",\"iso_3166-2\":\"ISO 3166-2:LV\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"Lebanon\",\"alpha-2\":\"LB\",\"alpha-3\":\"LBN\",\"country-code\":\"422\",\"iso_3166-2\":\"ISO 3166-2:LB\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Lesotho\",\"alpha-2\":\"LS\",\"alpha-3\":\"LSO\",\"country-code\":\"426\",\"iso_3166-2\":\"ISO 3166-2:LS\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Southern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"018\"},{\"name\":\"Liberia\",\"alpha-2\":\"LR\",\"alpha-3\":\"LBR\",\"country-code\":\"430\",\"iso_3166-2\":\"ISO 3166-2:LR\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Libya\",\"alpha-2\":\"LY\",\"alpha-3\":\"LBY\",\"country-code\":\"434\",\"iso_3166-2\":\"ISO 3166-2:LY\",\"region\":\"Africa\",\"sub-region\":\"Northern Africa\",\"intermediate-region\":\"\",\"region-code\":\"002\",\"sub-region-code\":\"015\",\"intermediate-region-code\":\"\"},{\"name\":\"Liechtenstein\",\"alpha-2\":\"LI\",\"alpha-3\":\"LIE\",\"country-code\":\"438\",\"iso_3166-2\":\"ISO 3166-2:LI\",\"region\":\"Europe\",\"sub-region\":\"Western Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"155\",\"intermediate-region-code\":\"\"},{\"name\":\"Lithuania\",\"alpha-2\":\"LT\",\"alpha-3\":\"LTU\",\"country-code\":\"440\",\"iso_3166-2\":\"ISO 3166-2:LT\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"Luxembourg\",\"alpha-2\":\"LU\",\"alpha-3\":\"LUX\",\"country-code\":\"442\",\"iso_3166-2\":\"ISO 3166-2:LU\",\"region\":\"Europe\",\"sub-region\":\"Western Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"155\",\"intermediate-region-code\":\"\"},{\"name\":\"Macao\",\"alpha-2\":\"MO\",\"alpha-3\":\"MAC\",\"country-code\":\"446\",\"iso_3166-2\":\"ISO 3166-2:MO\",\"region\":\"Asia\",\"sub-region\":\"Eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"030\",\"intermediate-region-code\":\"\"},{\"name\":\"Madagascar\",\"alpha-2\":\"MG\",\"alpha-3\":\"MDG\",\"country-code\":\"450\",\"iso_3166-2\":\"ISO 3166-2:MG\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Malawi\",\"alpha-2\":\"MW\",\"alpha-3\":\"MWI\",\"country-code\":\"454\",\"iso_3166-2\":\"ISO 3166-2:MW\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Malaysia\",\"alpha-2\":\"MY\",\"alpha-3\":\"MYS\",\"country-code\":\"458\",\"iso_3166-2\":\"ISO 3166-2:MY\",\"region\":\"Asia\",\"sub-region\":\"South-eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"035\",\"intermediate-region-code\":\"\"},{\"name\":\"Maldives\",\"alpha-2\":\"MV\",\"alpha-3\":\"MDV\",\"country-code\":\"462\",\"iso_3166-2\":\"ISO 3166-2:MV\",\"region\":\"Asia\",\"sub-region\":\"Southern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"034\",\"intermediate-region-code\":\"\"},{\"name\":\"Mali\",\"alpha-2\":\"ML\",\"alpha-3\":\"MLI\",\"country-code\":\"466\",\"iso_3166-2\":\"ISO 3166-2:ML\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Malta\",\"alpha-2\":\"MT\",\"alpha-3\":\"MLT\",\"country-code\":\"470\",\"iso_3166-2\":\"ISO 3166-2:MT\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Marshall Islands\",\"alpha-2\":\"MH\",\"alpha-3\":\"MHL\",\"country-code\":\"584\",\"iso_3166-2\":\"ISO 3166-2:MH\",\"region\":\"Oceania\",\"sub-region\":\"Micronesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"057\",\"intermediate-region-code\":\"\"},{\"name\":\"Martinique\",\"alpha-2\":\"MQ\",\"alpha-3\":\"MTQ\",\"country-code\":\"474\",\"iso_3166-2\":\"ISO 3166-2:MQ\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Mauritania\",\"alpha-2\":\"MR\",\"alpha-3\":\"MRT\",\"country-code\":\"478\",\"iso_3166-2\":\"ISO 3166-2:MR\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Mauritius\",\"alpha-2\":\"MU\",\"alpha-3\":\"MUS\",\"country-code\":\"480\",\"iso_3166-2\":\"ISO 3166-2:MU\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Mayotte\",\"alpha-2\":\"YT\",\"alpha-3\":\"MYT\",\"country-code\":\"175\",\"iso_3166-2\":\"ISO 3166-2:YT\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Mexico\",\"alpha-2\":\"MX\",\"alpha-3\":\"MEX\",\"country-code\":\"484\",\"iso_3166-2\":\"ISO 3166-2:MX\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Central America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"013\"},{\"name\":\"Micronesia (Federated States of)\",\"alpha-2\":\"FM\",\"alpha-3\":\"FSM\",\"country-code\":\"583\",\"iso_3166-2\":\"ISO 3166-2:FM\",\"region\":\"Oceania\",\"sub-region\":\"Micronesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"057\",\"intermediate-region-code\":\"\"},{\"name\":\"Moldova, Republic of\",\"alpha-2\":\"MD\",\"alpha-3\":\"MDA\",\"country-code\":\"498\",\"iso_3166-2\":\"ISO 3166-2:MD\",\"region\":\"Europe\",\"sub-region\":\"Eastern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"151\",\"intermediate-region-code\":\"\"},{\"name\":\"Monaco\",\"alpha-2\":\"MC\",\"alpha-3\":\"MCO\",\"country-code\":\"492\",\"iso_3166-2\":\"ISO 3166-2:MC\",\"region\":\"Europe\",\"sub-region\":\"Western Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"155\",\"intermediate-region-code\":\"\"},{\"name\":\"Mongolia\",\"alpha-2\":\"MN\",\"alpha-3\":\"MNG\",\"country-code\":\"496\",\"iso_3166-2\":\"ISO 3166-2:MN\",\"region\":\"Asia\",\"sub-region\":\"Eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"030\",\"intermediate-region-code\":\"\"},{\"name\":\"Montenegro\",\"alpha-2\":\"ME\",\"alpha-3\":\"MNE\",\"country-code\":\"499\",\"iso_3166-2\":\"ISO 3166-2:ME\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Montserrat\",\"alpha-2\":\"MS\",\"alpha-3\":\"MSR\",\"country-code\":\"500\",\"iso_3166-2\":\"ISO 3166-2:MS\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Morocco\",\"alpha-2\":\"MA\",\"alpha-3\":\"MAR\",\"country-code\":\"504\",\"iso_3166-2\":\"ISO 3166-2:MA\",\"region\":\"Africa\",\"sub-region\":\"Northern Africa\",\"intermediate-region\":\"\",\"region-code\":\"002\",\"sub-region-code\":\"015\",\"intermediate-region-code\":\"\"},{\"name\":\"Mozambique\",\"alpha-2\":\"MZ\",\"alpha-3\":\"MOZ\",\"country-code\":\"508\",\"iso_3166-2\":\"ISO 3166-2:MZ\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Myanmar\",\"alpha-2\":\"MM\",\"alpha-3\":\"MMR\",\"country-code\":\"104\",\"iso_3166-2\":\"ISO 3166-2:MM\",\"region\":\"Asia\",\"sub-region\":\"South-eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"035\",\"intermediate-region-code\":\"\"},{\"name\":\"Namibia\",\"alpha-2\":\"NA\",\"alpha-3\":\"NAM\",\"country-code\":\"516\",\"iso_3166-2\":\"ISO 3166-2:NA\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Southern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"018\"},{\"name\":\"Nauru\",\"alpha-2\":\"NR\",\"alpha-3\":\"NRU\",\"country-code\":\"520\",\"iso_3166-2\":\"ISO 3166-2:NR\",\"region\":\"Oceania\",\"sub-region\":\"Micronesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"057\",\"intermediate-region-code\":\"\"},{\"name\":\"Nepal\",\"alpha-2\":\"NP\",\"alpha-3\":\"NPL\",\"country-code\":\"524\",\"iso_3166-2\":\"ISO 3166-2:NP\",\"region\":\"Asia\",\"sub-region\":\"Southern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"034\",\"intermediate-region-code\":\"\"},{\"name\":\"Netherlands\",\"alpha-2\":\"NL\",\"alpha-3\":\"NLD\",\"country-code\":\"528\",\"iso_3166-2\":\"ISO 3166-2:NL\",\"region\":\"Europe\",\"sub-region\":\"Western Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"155\",\"intermediate-region-code\":\"\"},{\"name\":\"New Caledonia\",\"alpha-2\":\"NC\",\"alpha-3\":\"NCL\",\"country-code\":\"540\",\"iso_3166-2\":\"ISO 3166-2:NC\",\"region\":\"Oceania\",\"sub-region\":\"Melanesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"054\",\"intermediate-region-code\":\"\"},{\"name\":\"New Zealand\",\"alpha-2\":\"NZ\",\"alpha-3\":\"NZL\",\"country-code\":\"554\",\"iso_3166-2\":\"ISO 3166-2:NZ\",\"region\":\"Oceania\",\"sub-region\":\"Australia and New Zealand\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"053\",\"intermediate-region-code\":\"\"},{\"name\":\"Nicaragua\",\"alpha-2\":\"NI\",\"alpha-3\":\"NIC\",\"country-code\":\"558\",\"iso_3166-2\":\"ISO 3166-2:NI\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Central America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"013\"},{\"name\":\"Niger\",\"alpha-2\":\"NE\",\"alpha-3\":\"NER\",\"country-code\":\"562\",\"iso_3166-2\":\"ISO 3166-2:NE\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Nigeria\",\"alpha-2\":\"NG\",\"alpha-3\":\"NGA\",\"country-code\":\"566\",\"iso_3166-2\":\"ISO 3166-2:NG\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Niue\",\"alpha-2\":\"NU\",\"alpha-3\":\"NIU\",\"country-code\":\"570\",\"iso_3166-2\":\"ISO 3166-2:NU\",\"region\":\"Oceania\",\"sub-region\":\"Polynesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"061\",\"intermediate-region-code\":\"\"},{\"name\":\"Norfolk Island\",\"alpha-2\":\"NF\",\"alpha-3\":\"NFK\",\"country-code\":\"574\",\"iso_3166-2\":\"ISO 3166-2:NF\",\"region\":\"Oceania\",\"sub-region\":\"Australia and New Zealand\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"053\",\"intermediate-region-code\":\"\"},{\"name\":\"North Macedonia\",\"alpha-2\":\"MK\",\"alpha-3\":\"MKD\",\"country-code\":\"807\",\"iso_3166-2\":\"ISO 3166-2:MK\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Northern Mariana Islands\",\"alpha-2\":\"MP\",\"alpha-3\":\"MNP\",\"country-code\":\"580\",\"iso_3166-2\":\"ISO 3166-2:MP\",\"region\":\"Oceania\",\"sub-region\":\"Micronesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"057\",\"intermediate-region-code\":\"\"},{\"name\":\"Norway\",\"alpha-2\":\"NO\",\"alpha-3\":\"NOR\",\"country-code\":\"578\",\"iso_3166-2\":\"ISO 3166-2:NO\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"Oman\",\"alpha-2\":\"OM\",\"alpha-3\":\"OMN\",\"country-code\":\"512\",\"iso_3166-2\":\"ISO 3166-2:OM\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Pakistan\",\"alpha-2\":\"PK\",\"alpha-3\":\"PAK\",\"country-code\":\"586\",\"iso_3166-2\":\"ISO 3166-2:PK\",\"region\":\"Asia\",\"sub-region\":\"Southern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"034\",\"intermediate-region-code\":\"\"},{\"name\":\"Palau\",\"alpha-2\":\"PW\",\"alpha-3\":\"PLW\",\"country-code\":\"585\",\"iso_3166-2\":\"ISO 3166-2:PW\",\"region\":\"Oceania\",\"sub-region\":\"Micronesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"057\",\"intermediate-region-code\":\"\"},{\"name\":\"Palestine, State of\",\"alpha-2\":\"PS\",\"alpha-3\":\"PSE\",\"country-code\":\"275\",\"iso_3166-2\":\"ISO 3166-2:PS\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Panama\",\"alpha-2\":\"PA\",\"alpha-3\":\"PAN\",\"country-code\":\"591\",\"iso_3166-2\":\"ISO 3166-2:PA\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Central America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"013\"},{\"name\":\"Papua New Guinea\",\"alpha-2\":\"PG\",\"alpha-3\":\"PNG\",\"country-code\":\"598\",\"iso_3166-2\":\"ISO 3166-2:PG\",\"region\":\"Oceania\",\"sub-region\":\"Melanesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"054\",\"intermediate-region-code\":\"\"},{\"name\":\"Paraguay\",\"alpha-2\":\"PY\",\"alpha-3\":\"PRY\",\"country-code\":\"600\",\"iso_3166-2\":\"ISO 3166-2:PY\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"Peru\",\"alpha-2\":\"PE\",\"alpha-3\":\"PER\",\"country-code\":\"604\",\"iso_3166-2\":\"ISO 3166-2:PE\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"Philippines\",\"alpha-2\":\"PH\",\"alpha-3\":\"PHL\",\"country-code\":\"608\",\"iso_3166-2\":\"ISO 3166-2:PH\",\"region\":\"Asia\",\"sub-region\":\"South-eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"035\",\"intermediate-region-code\":\"\"},{\"name\":\"Pitcairn\",\"alpha-2\":\"PN\",\"alpha-3\":\"PCN\",\"country-code\":\"612\",\"iso_3166-2\":\"ISO 3166-2:PN\",\"region\":\"Oceania\",\"sub-region\":\"Polynesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"061\",\"intermediate-region-code\":\"\"},{\"name\":\"Poland\",\"alpha-2\":\"PL\",\"alpha-3\":\"POL\",\"country-code\":\"616\",\"iso_3166-2\":\"ISO 3166-2:PL\",\"region\":\"Europe\",\"sub-region\":\"Eastern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"151\",\"intermediate-region-code\":\"\"},{\"name\":\"Portugal\",\"alpha-2\":\"PT\",\"alpha-3\":\"PRT\",\"country-code\":\"620\",\"iso_3166-2\":\"ISO 3166-2:PT\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Puerto Rico\",\"alpha-2\":\"PR\",\"alpha-3\":\"PRI\",\"country-code\":\"630\",\"iso_3166-2\":\"ISO 3166-2:PR\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Qatar\",\"alpha-2\":\"QA\",\"alpha-3\":\"QAT\",\"country-code\":\"634\",\"iso_3166-2\":\"ISO 3166-2:QA\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Réunion\",\"alpha-2\":\"RE\",\"alpha-3\":\"REU\",\"country-code\":\"638\",\"iso_3166-2\":\"ISO 3166-2:RE\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Romania\",\"alpha-2\":\"RO\",\"alpha-3\":\"ROU\",\"country-code\":\"642\",\"iso_3166-2\":\"ISO 3166-2:RO\",\"region\":\"Europe\",\"sub-region\":\"Eastern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"151\",\"intermediate-region-code\":\"\"},{\"name\":\"Russian Federation\",\"alpha-2\":\"RU\",\"alpha-3\":\"RUS\",\"country-code\":\"643\",\"iso_3166-2\":\"ISO 3166-2:RU\",\"region\":\"Europe\",\"sub-region\":\"Eastern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"151\",\"intermediate-region-code\":\"\"},{\"name\":\"Rwanda\",\"alpha-2\":\"RW\",\"alpha-3\":\"RWA\",\"country-code\":\"646\",\"iso_3166-2\":\"ISO 3166-2:RW\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Saint Barthélemy\",\"alpha-2\":\"BL\",\"alpha-3\":\"BLM\",\"country-code\":\"652\",\"iso_3166-2\":\"ISO 3166-2:BL\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Saint Helena, Ascension and Tristan da Cunha\",\"alpha-2\":\"SH\",\"alpha-3\":\"SHN\",\"country-code\":\"654\",\"iso_3166-2\":\"ISO 3166-2:SH\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Saint Kitts and Nevis\",\"alpha-2\":\"KN\",\"alpha-3\":\"KNA\",\"country-code\":\"659\",\"iso_3166-2\":\"ISO 3166-2:KN\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Saint Lucia\",\"alpha-2\":\"LC\",\"alpha-3\":\"LCA\",\"country-code\":\"662\",\"iso_3166-2\":\"ISO 3166-2:LC\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Saint Martin (French part)\",\"alpha-2\":\"MF\",\"alpha-3\":\"MAF\",\"country-code\":\"663\",\"iso_3166-2\":\"ISO 3166-2:MF\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Saint Pierre and Miquelon\",\"alpha-2\":\"PM\",\"alpha-3\":\"SPM\",\"country-code\":\"666\",\"iso_3166-2\":\"ISO 3166-2:PM\",\"region\":\"Americas\",\"sub-region\":\"Northern America\",\"intermediate-region\":\"\",\"region-code\":\"019\",\"sub-region-code\":\"021\",\"intermediate-region-code\":\"\"},{\"name\":\"Saint Vincent and the Grenadines\",\"alpha-2\":\"VC\",\"alpha-3\":\"VCT\",\"country-code\":\"670\",\"iso_3166-2\":\"ISO 3166-2:VC\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Samoa\",\"alpha-2\":\"WS\",\"alpha-3\":\"WSM\",\"country-code\":\"882\",\"iso_3166-2\":\"ISO 3166-2:WS\",\"region\":\"Oceania\",\"sub-region\":\"Polynesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"061\",\"intermediate-region-code\":\"\"},{\"name\":\"San Marino\",\"alpha-2\":\"SM\",\"alpha-3\":\"SMR\",\"country-code\":\"674\",\"iso_3166-2\":\"ISO 3166-2:SM\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Sao Tome and Principe\",\"alpha-2\":\"ST\",\"alpha-3\":\"STP\",\"country-code\":\"678\",\"iso_3166-2\":\"ISO 3166-2:ST\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Middle Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"017\"},{\"name\":\"Saudi Arabia\",\"alpha-2\":\"SA\",\"alpha-3\":\"SAU\",\"country-code\":\"682\",\"iso_3166-2\":\"ISO 3166-2:SA\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Senegal\",\"alpha-2\":\"SN\",\"alpha-3\":\"SEN\",\"country-code\":\"686\",\"iso_3166-2\":\"ISO 3166-2:SN\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Serbia\",\"alpha-2\":\"RS\",\"alpha-3\":\"SRB\",\"country-code\":\"688\",\"iso_3166-2\":\"ISO 3166-2:RS\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Seychelles\",\"alpha-2\":\"SC\",\"alpha-3\":\"SYC\",\"country-code\":\"690\",\"iso_3166-2\":\"ISO 3166-2:SC\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Sierra Leone\",\"alpha-2\":\"SL\",\"alpha-3\":\"SLE\",\"country-code\":\"694\",\"iso_3166-2\":\"ISO 3166-2:SL\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Singapore\",\"alpha-2\":\"SG\",\"alpha-3\":\"SGP\",\"country-code\":\"702\",\"iso_3166-2\":\"ISO 3166-2:SG\",\"region\":\"Asia\",\"sub-region\":\"South-eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"035\",\"intermediate-region-code\":\"\"},{\"name\":\"Sint Maarten (Dutch part)\",\"alpha-2\":\"SX\",\"alpha-3\":\"SXM\",\"country-code\":\"534\",\"iso_3166-2\":\"ISO 3166-2:SX\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Slovakia\",\"alpha-2\":\"SK\",\"alpha-3\":\"SVK\",\"country-code\":\"703\",\"iso_3166-2\":\"ISO 3166-2:SK\",\"region\":\"Europe\",\"sub-region\":\"Eastern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"151\",\"intermediate-region-code\":\"\"},{\"name\":\"Slovenia\",\"alpha-2\":\"SI\",\"alpha-3\":\"SVN\",\"country-code\":\"705\",\"iso_3166-2\":\"ISO 3166-2:SI\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Solomon Islands\",\"alpha-2\":\"SB\",\"alpha-3\":\"SLB\",\"country-code\":\"090\",\"iso_3166-2\":\"ISO 3166-2:SB\",\"region\":\"Oceania\",\"sub-region\":\"Melanesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"054\",\"intermediate-region-code\":\"\"},{\"name\":\"Somalia\",\"alpha-2\":\"SO\",\"alpha-3\":\"SOM\",\"country-code\":\"706\",\"iso_3166-2\":\"ISO 3166-2:SO\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"South Africa\",\"alpha-2\":\"ZA\",\"alpha-3\":\"ZAF\",\"country-code\":\"710\",\"iso_3166-2\":\"ISO 3166-2:ZA\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Southern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"018\"},{\"name\":\"South Georgia and the South Sandwich Islands\",\"alpha-2\":\"GS\",\"alpha-3\":\"SGS\",\"country-code\":\"239\",\"iso_3166-2\":\"ISO 3166-2:GS\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"South Sudan\",\"alpha-2\":\"SS\",\"alpha-3\":\"SSD\",\"country-code\":\"728\",\"iso_3166-2\":\"ISO 3166-2:SS\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Spain\",\"alpha-2\":\"ES\",\"alpha-3\":\"ESP\",\"country-code\":\"724\",\"iso_3166-2\":\"ISO 3166-2:ES\",\"region\":\"Europe\",\"sub-region\":\"Southern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"039\",\"intermediate-region-code\":\"\"},{\"name\":\"Sri Lanka\",\"alpha-2\":\"LK\",\"alpha-3\":\"LKA\",\"country-code\":\"144\",\"iso_3166-2\":\"ISO 3166-2:LK\",\"region\":\"Asia\",\"sub-region\":\"Southern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"034\",\"intermediate-region-code\":\"\"},{\"name\":\"Sudan\",\"alpha-2\":\"SD\",\"alpha-3\":\"SDN\",\"country-code\":\"729\",\"iso_3166-2\":\"ISO 3166-2:SD\",\"region\":\"Africa\",\"sub-region\":\"Northern Africa\",\"intermediate-region\":\"\",\"region-code\":\"002\",\"sub-region-code\":\"015\",\"intermediate-region-code\":\"\"},{\"name\":\"Suriname\",\"alpha-2\":\"SR\",\"alpha-3\":\"SUR\",\"country-code\":\"740\",\"iso_3166-2\":\"ISO 3166-2:SR\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"Svalbard and Jan Mayen\",\"alpha-2\":\"SJ\",\"alpha-3\":\"SJM\",\"country-code\":\"744\",\"iso_3166-2\":\"ISO 3166-2:SJ\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"Sweden\",\"alpha-2\":\"SE\",\"alpha-3\":\"SWE\",\"country-code\":\"752\",\"iso_3166-2\":\"ISO 3166-2:SE\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"Switzerland\",\"alpha-2\":\"CH\",\"alpha-3\":\"CHE\",\"country-code\":\"756\",\"iso_3166-2\":\"ISO 3166-2:CH\",\"region\":\"Europe\",\"sub-region\":\"Western Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"155\",\"intermediate-region-code\":\"\"},{\"name\":\"Syrian Arab Republic\",\"alpha-2\":\"SY\",\"alpha-3\":\"SYR\",\"country-code\":\"760\",\"iso_3166-2\":\"ISO 3166-2:SY\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Taiwan, Province of China\",\"alpha-2\":\"TW\",\"alpha-3\":\"TWN\",\"country-code\":\"158\",\"iso_3166-2\":\"ISO 3166-2:TW\",\"region\":\"Asia\",\"sub-region\":\"Eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"030\",\"intermediate-region-code\":\"\"},{\"name\":\"Tajikistan\",\"alpha-2\":\"TJ\",\"alpha-3\":\"TJK\",\"country-code\":\"762\",\"iso_3166-2\":\"ISO 3166-2:TJ\",\"region\":\"Asia\",\"sub-region\":\"Central Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"143\",\"intermediate-region-code\":\"\"},{\"name\":\"Tanzania, United Republic of\",\"alpha-2\":\"TZ\",\"alpha-3\":\"TZA\",\"country-code\":\"834\",\"iso_3166-2\":\"ISO 3166-2:TZ\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Thailand\",\"alpha-2\":\"TH\",\"alpha-3\":\"THA\",\"country-code\":\"764\",\"iso_3166-2\":\"ISO 3166-2:TH\",\"region\":\"Asia\",\"sub-region\":\"South-eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"035\",\"intermediate-region-code\":\"\"},{\"name\":\"Timor-Leste\",\"alpha-2\":\"TL\",\"alpha-3\":\"TLS\",\"country-code\":\"626\",\"iso_3166-2\":\"ISO 3166-2:TL\",\"region\":\"Asia\",\"sub-region\":\"South-eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"035\",\"intermediate-region-code\":\"\"},{\"name\":\"Togo\",\"alpha-2\":\"TG\",\"alpha-3\":\"TGO\",\"country-code\":\"768\",\"iso_3166-2\":\"ISO 3166-2:TG\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Western Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"011\"},{\"name\":\"Tokelau\",\"alpha-2\":\"TK\",\"alpha-3\":\"TKL\",\"country-code\":\"772\",\"iso_3166-2\":\"ISO 3166-2:TK\",\"region\":\"Oceania\",\"sub-region\":\"Polynesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"061\",\"intermediate-region-code\":\"\"},{\"name\":\"Tonga\",\"alpha-2\":\"TO\",\"alpha-3\":\"TON\",\"country-code\":\"776\",\"iso_3166-2\":\"ISO 3166-2:TO\",\"region\":\"Oceania\",\"sub-region\":\"Polynesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"061\",\"intermediate-region-code\":\"\"},{\"name\":\"Trinidad and Tobago\",\"alpha-2\":\"TT\",\"alpha-3\":\"TTO\",\"country-code\":\"780\",\"iso_3166-2\":\"ISO 3166-2:TT\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Tunisia\",\"alpha-2\":\"TN\",\"alpha-3\":\"TUN\",\"country-code\":\"788\",\"iso_3166-2\":\"ISO 3166-2:TN\",\"region\":\"Africa\",\"sub-region\":\"Northern Africa\",\"intermediate-region\":\"\",\"region-code\":\"002\",\"sub-region-code\":\"015\",\"intermediate-region-code\":\"\"},{\"name\":\"Turkey\",\"alpha-2\":\"TR\",\"alpha-3\":\"TUR\",\"country-code\":\"792\",\"iso_3166-2\":\"ISO 3166-2:TR\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Turkmenistan\",\"alpha-2\":\"TM\",\"alpha-3\":\"TKM\",\"country-code\":\"795\",\"iso_3166-2\":\"ISO 3166-2:TM\",\"region\":\"Asia\",\"sub-region\":\"Central Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"143\",\"intermediate-region-code\":\"\"},{\"name\":\"Turks and Caicos Islands\",\"alpha-2\":\"TC\",\"alpha-3\":\"TCA\",\"country-code\":\"796\",\"iso_3166-2\":\"ISO 3166-2:TC\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Tuvalu\",\"alpha-2\":\"TV\",\"alpha-3\":\"TUV\",\"country-code\":\"798\",\"iso_3166-2\":\"ISO 3166-2:TV\",\"region\":\"Oceania\",\"sub-region\":\"Polynesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"061\",\"intermediate-region-code\":\"\"},{\"name\":\"Uganda\",\"alpha-2\":\"UG\",\"alpha-3\":\"UGA\",\"country-code\":\"800\",\"iso_3166-2\":\"ISO 3166-2:UG\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Ukraine\",\"alpha-2\":\"UA\",\"alpha-3\":\"UKR\",\"country-code\":\"804\",\"iso_3166-2\":\"ISO 3166-2:UA\",\"region\":\"Europe\",\"sub-region\":\"Eastern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"151\",\"intermediate-region-code\":\"\"},{\"name\":\"United Arab Emirates\",\"alpha-2\":\"AE\",\"alpha-3\":\"ARE\",\"country-code\":\"784\",\"iso_3166-2\":\"ISO 3166-2:AE\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"United Kingdom of Great Britain and Northern Ireland\",\"alpha-2\":\"GB\",\"alpha-3\":\"GBR\",\"country-code\":\"826\",\"iso_3166-2\":\"ISO 3166-2:GB\",\"region\":\"Europe\",\"sub-region\":\"Northern Europe\",\"intermediate-region\":\"\",\"region-code\":\"150\",\"sub-region-code\":\"154\",\"intermediate-region-code\":\"\"},{\"name\":\"United States of America\",\"alpha-2\":\"US\",\"alpha-3\":\"USA\",\"country-code\":\"840\",\"iso_3166-2\":\"ISO 3166-2:US\",\"region\":\"Americas\",\"sub-region\":\"Northern America\",\"intermediate-region\":\"\",\"region-code\":\"019\",\"sub-region-code\":\"021\",\"intermediate-region-code\":\"\"},{\"name\":\"United States Minor Outlying Islands\",\"alpha-2\":\"UM\",\"alpha-3\":\"UMI\",\"country-code\":\"581\",\"iso_3166-2\":\"ISO 3166-2:UM\",\"region\":\"Oceania\",\"sub-region\":\"Micronesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"057\",\"intermediate-region-code\":\"\"},{\"name\":\"Uruguay\",\"alpha-2\":\"UY\",\"alpha-3\":\"URY\",\"country-code\":\"858\",\"iso_3166-2\":\"ISO 3166-2:UY\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"Uzbekistan\",\"alpha-2\":\"UZ\",\"alpha-3\":\"UZB\",\"country-code\":\"860\",\"iso_3166-2\":\"ISO 3166-2:UZ\",\"region\":\"Asia\",\"sub-region\":\"Central Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"143\",\"intermediate-region-code\":\"\"},{\"name\":\"Vanuatu\",\"alpha-2\":\"VU\",\"alpha-3\":\"VUT\",\"country-code\":\"548\",\"iso_3166-2\":\"ISO 3166-2:VU\",\"region\":\"Oceania\",\"sub-region\":\"Melanesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"054\",\"intermediate-region-code\":\"\"},{\"name\":\"Venezuela (Bolivarian Republic of)\",\"alpha-2\":\"VE\",\"alpha-3\":\"VEN\",\"country-code\":\"862\",\"iso_3166-2\":\"ISO 3166-2:VE\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"South America\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"005\"},{\"name\":\"Viet Nam\",\"alpha-2\":\"VN\",\"alpha-3\":\"VNM\",\"country-code\":\"704\",\"iso_3166-2\":\"ISO 3166-2:VN\",\"region\":\"Asia\",\"sub-region\":\"South-eastern Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"035\",\"intermediate-region-code\":\"\"},{\"name\":\"Virgin Islands (British)\",\"alpha-2\":\"VG\",\"alpha-3\":\"VGB\",\"country-code\":\"092\",\"iso_3166-2\":\"ISO 3166-2:VG\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Virgin Islands (U.S.)\",\"alpha-2\":\"VI\",\"alpha-3\":\"VIR\",\"country-code\":\"850\",\"iso_3166-2\":\"ISO 3166-2:VI\",\"region\":\"Americas\",\"sub-region\":\"Latin America and the Caribbean\",\"intermediate-region\":\"Caribbean\",\"region-code\":\"019\",\"sub-region-code\":\"419\",\"intermediate-region-code\":\"029\"},{\"name\":\"Wallis and Futuna\",\"alpha-2\":\"WF\",\"alpha-3\":\"WLF\",\"country-code\":\"876\",\"iso_3166-2\":\"ISO 3166-2:WF\",\"region\":\"Oceania\",\"sub-region\":\"Polynesia\",\"intermediate-region\":\"\",\"region-code\":\"009\",\"sub-region-code\":\"061\",\"intermediate-region-code\":\"\"},{\"name\":\"Western Sahara\",\"alpha-2\":\"EH\",\"alpha-3\":\"ESH\",\"country-code\":\"732\",\"iso_3166-2\":\"ISO 3166-2:EH\",\"region\":\"Africa\",\"sub-region\":\"Northern Africa\",\"intermediate-region\":\"\",\"region-code\":\"002\",\"sub-region-code\":\"015\",\"intermediate-region-code\":\"\"},{\"name\":\"Yemen\",\"alpha-2\":\"YE\",\"alpha-3\":\"YEM\",\"country-code\":\"887\",\"iso_3166-2\":\"ISO 3166-2:YE\",\"region\":\"Asia\",\"sub-region\":\"Western Asia\",\"intermediate-region\":\"\",\"region-code\":\"142\",\"sub-region-code\":\"145\",\"intermediate-region-code\":\"\"},{\"name\":\"Zambia\",\"alpha-2\":\"ZM\",\"alpha-3\":\"ZMB\",\"country-code\":\"894\",\"iso_3166-2\":\"ISO 3166-2:ZM\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"},{\"name\":\"Zimbabwe\",\"alpha-2\":\"ZW\",\"alpha-3\":\"ZWE\",\"country-code\":\"716\",\"iso_3166-2\":\"ISO 3166-2:ZW\",\"region\":\"Africa\",\"sub-region\":\"Sub-Saharan Africa\",\"intermediate-region\":\"Eastern Africa\",\"region-code\":\"002\",\"sub-region-code\":\"202\",\"intermediate-region-code\":\"014\"}]')
  ];
  List<dynamic> get regionCodes => _regionCodes;
  set regionCodes(List<dynamic> value) {
    _regionCodes = value;
  }

  void addToRegionCodes(dynamic value) {
    regionCodes.add(value);
  }

  void removeFromRegionCodes(dynamic value) {
    regionCodes.remove(value);
  }

  void removeAtIndexFromRegionCodes(int index) {
    regionCodes.removeAt(index);
  }

  void updateRegionCodesAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    regionCodes[index] = updateFn(_regionCodes[index]);
  }

  void insertAtIndexInRegionCodes(int index, dynamic value) {
    regionCodes.insert(index, value);
  }

  List<String> _AllRegionNames = [];
  List<String> get AllRegionNames => _AllRegionNames;
  set AllRegionNames(List<String> value) {
    _AllRegionNames = value;
  }

  void addToAllRegionNames(String value) {
    AllRegionNames.add(value);
  }

  void removeFromAllRegionNames(String value) {
    AllRegionNames.remove(value);
  }

  void removeAtIndexFromAllRegionNames(int index) {
    AllRegionNames.removeAt(index);
  }

  void updateAllRegionNamesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    AllRegionNames[index] = updateFn(_AllRegionNames[index]);
  }

  void insertAtIndexInAllRegionNames(int index, String value) {
    AllRegionNames.insert(index, value);
  }

  String _selectedNotifications = '';
  String get selectedNotifications => _selectedNotifications;
  set selectedNotifications(String value) {
    _selectedNotifications = value;
    prefs.setString('ff_selectedNotifications', value);
  }

  String _selectedTax = '';
  String get selectedTax => _selectedTax;
  set selectedTax(String value) {
    _selectedTax = value;
    prefs.setString('ff_selectedTax', value);
  }

  bool _isOntapCurrentLocation = false;
  bool get isOntapCurrentLocation => _isOntapCurrentLocation;
  set isOntapCurrentLocation(bool value) {
    _isOntapCurrentLocation = value;
  }

  String _isHostDateAvailable = '';
  String get isHostDateAvailable => _isHostDateAvailable;
  set isHostDateAvailable(String value) {
    _isHostDateAvailable = value;
  }

  List<String> _imageList = [
    'https://picsum.photos/seed/842/600',
    'https://picsum.photos/seed/783/600',
    'https://picsum.photos/seed/296/600',
    'Hello World'
  ];
  List<String> get imageList => _imageList;
  set imageList(List<String> value) {
    _imageList = value;
  }

  void addToImageList(String value) {
    imageList.add(value);
  }

  void removeFromImageList(String value) {
    imageList.remove(value);
  }

  void removeAtIndexFromImageList(int index) {
    imageList.removeAt(index);
  }

  void updateImageListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    imageList[index] = updateFn(_imageList[index]);
  }

  void insertAtIndexInImageList(int index, String value) {
    imageList.insert(index, value);
  }

  bool _isHide = false;
  bool get isHide => _isHide;
  set isHide(bool value) {
    _isHide = value;
  }

  List<String> _Amenities = [];
  List<String> get Amenities => _Amenities;
  set Amenities(List<String> value) {
    _Amenities = value;
    prefs.setStringList('ff_Amenities', value);
  }

  void addToAmenities(String value) {
    Amenities.add(value);
    prefs.setStringList('ff_Amenities', _Amenities);
  }

  void removeFromAmenities(String value) {
    Amenities.remove(value);
    prefs.setStringList('ff_Amenities', _Amenities);
  }

  void removeAtIndexFromAmenities(int index) {
    Amenities.removeAt(index);
    prefs.setStringList('ff_Amenities', _Amenities);
  }

  void updateAmenitiesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Amenities[index] = updateFn(_Amenities[index]);
    prefs.setStringList('ff_Amenities', _Amenities);
  }

  void insertAtIndexInAmenities(int index, String value) {
    Amenities.insert(index, value);
    prefs.setStringList('ff_Amenities', _Amenities);
  }

  String _tempOtp = '';
  String get tempOtp => _tempOtp;
  set tempOtp(String value) {
    _tempOtp = value;
  }

  LatLng? _propertyLocation;
  LatLng? get propertyLocation => _propertyLocation;
  set propertyLocation(LatLng? value) {
    _propertyLocation = value;
  }

  List<String> _ManageRoutesList = [
    'startHosting',
    'tellusAboutYourProperty',
    'propertyLocation',
    'addressDetails',
    'basicDetails',
    'amenities',
    'definePropertyPricing',
    'propertySummary',
    'uploadPictures',
    'submissionConfirmation'
  ];
  List<String> get ManageRoutesList => _ManageRoutesList;
  set ManageRoutesList(List<String> value) {
    _ManageRoutesList = value;
  }

  void addToManageRoutesList(String value) {
    ManageRoutesList.add(value);
  }

  void removeFromManageRoutesList(String value) {
    ManageRoutesList.remove(value);
  }

  void removeAtIndexFromManageRoutesList(int index) {
    ManageRoutesList.removeAt(index);
  }

  void updateManageRoutesListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ManageRoutesList[index] = updateFn(_ManageRoutesList[index]);
  }

  void insertAtIndexInManageRoutesList(int index, String value) {
    ManageRoutesList.insert(index, value);
  }

  String _SavedRoute = '';
  String get SavedRoute => _SavedRoute;
  set SavedRoute(String value) {
    _SavedRoute = value;
    prefs.setString('ff_SavedRoute', value);
  }

  List<DateTime> _selectedDateRange = [];
  List<DateTime> get selectedDateRange => _selectedDateRange;
  set selectedDateRange(List<DateTime> value) {
    _selectedDateRange = value;
  }

  void addToSelectedDateRange(DateTime value) {
    selectedDateRange.add(value);
  }

  void removeFromSelectedDateRange(DateTime value) {
    selectedDateRange.remove(value);
  }

  void removeAtIndexFromSelectedDateRange(int index) {
    selectedDateRange.removeAt(index);
  }

  void updateSelectedDateRangeAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    selectedDateRange[index] = updateFn(_selectedDateRange[index]);
  }

  void insertAtIndexInSelectedDateRange(int index, DateTime value) {
    selectedDateRange.insert(index, value);
  }

  int _startPrice = 100;
  int get startPrice => _startPrice;
  set startPrice(int value) {
    _startPrice = value;
  }

  int _endPrice = 10000;
  int get endPrice => _endPrice;
  set endPrice(int value) {
    _endPrice = value;
  }

  bool _isNoOfPersonClicked = false;
  bool get isNoOfPersonClicked => _isNoOfPersonClicked;
  set isNoOfPersonClicked(bool value) {
    _isNoOfPersonClicked = value;
  }

  int _adultCount = 0;
  int get adultCount => _adultCount;
  set adultCount(int value) {
    _adultCount = value;
  }

  int _childCount = 0;
  int get childCount => _childCount;
  set childCount(int value) {
    _childCount = value;
  }

  int _NoOfWishlist = 0;
  int get NoOfWishlist => _NoOfWishlist;
  set NoOfWishlist(int value) {
    _NoOfWishlist = value;
  }

  List<String> _setAllProperty = ['Apartment', 'House'];
  List<String> get setAllProperty => _setAllProperty;
  set setAllProperty(List<String> value) {
    _setAllProperty = value;
  }

  void addToSetAllProperty(String value) {
    setAllProperty.add(value);
  }

  void removeFromSetAllProperty(String value) {
    setAllProperty.remove(value);
  }

  void removeAtIndexFromSetAllProperty(int index) {
    setAllProperty.removeAt(index);
  }

  void updateSetAllPropertyAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    setAllProperty[index] = updateFn(_setAllProperty[index]);
  }

  void insertAtIndexInSetAllProperty(int index, String value) {
    setAllProperty.insert(index, value);
  }

  List<String> _allProperty = [];
  List<String> get allProperty => _allProperty;
  set allProperty(List<String> value) {
    _allProperty = value;
  }

  void addToAllProperty(String value) {
    allProperty.add(value);
  }

  void removeFromAllProperty(String value) {
    allProperty.remove(value);
  }

  void removeAtIndexFromAllProperty(int index) {
    allProperty.removeAt(index);
  }

  void updateAllPropertyAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    allProperty[index] = updateFn(_allProperty[index]);
  }

  void insertAtIndexInAllProperty(int index, String value) {
    allProperty.insert(index, value);
  }

  int _webHostStepIndex = 0;
  int get webHostStepIndex => _webHostStepIndex;
  set webHostStepIndex(int value) {
    _webHostStepIndex = value;
  }

  bool _isCurrentLocation = false;
  bool get isCurrentLocation => _isCurrentLocation;
  set isCurrentLocation(bool value) {
    _isCurrentLocation = value;
  }

  LatLng? _currentLocationLatLng;
  LatLng? get currentLocationLatLng => _currentLocationLatLng;
  set currentLocationLatLng(LatLng? value) {
    _currentLocationLatLng = value;
  }

  String _unitType = '';
  String get unitType => _unitType;
  set unitType(String value) {
    _unitType = value;
  }

  List<String> _carouselList = [
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1694965449_Best_Deals_on_Kitchenware_Desktop.jpg?im=Resize=(1680,320)',
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1695139193_Super_Saver_Deals_Desktop.jpg?im=Resize=(1680,320)',
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1694799924_Max_Discounts_On_Daily_Essentials_Desktop.jpg?im=Resize=(1680,320)',
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1695218189_Get_festive_ready_Desktop.jpg?im=Resize=(1680,320)',
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1695059478_Banner_1_1680x320_-_Copy.jpg?im=Resize=(1680,320)',
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1695218358_Best_deals_on_soft_toys_Desktop.jpg?im=Resize=(1680,320)',
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1695218358_Best_deals_on_soft_toys_Desktop.jpg?im=Resize=(1680,320)',
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1694965773_D3.jpg?im=Resize=(1680,320)',
    'https://www.jiomart.com/images/cms/aw_rbslider/slides/1694965773_D3.jpg?im=Resize=(1680,320)'
  ];
  List<String> get carouselList => _carouselList;
  set carouselList(List<String> value) {
    _carouselList = value;
  }

  void addToCarouselList(String value) {
    carouselList.add(value);
  }

  void removeFromCarouselList(String value) {
    carouselList.remove(value);
  }

  void removeAtIndexFromCarouselList(int index) {
    carouselList.removeAt(index);
  }

  void updateCarouselListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    carouselList[index] = updateFn(_carouselList[index]);
  }

  void insertAtIndexInCarouselList(int index, String value) {
    carouselList.insert(index, value);
  }

  bool _isMenuClicked = false;
  bool get isMenuClicked => _isMenuClicked;
  set isMenuClicked(bool value) {
    _isMenuClicked = value;
  }

  bool _disable = false;
  bool get disable => _disable;
  set disable(bool value) {
    _disable = value;
  }

  int _definePriceWeb = 0;
  int get definePriceWeb => _definePriceWeb;
  set definePriceWeb(int value) {
    _definePriceWeb = value;
  }

  DateTime? _dob;
  DateTime? get dob => _dob;
  set dob(DateTime? value) {
    _dob = value;
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String value) {
    _accessToken = value;
    prefs.setString('ff_accessToken', value);
  }

  String _phoneNumberWithCountryCode = '';
  String get phoneNumberWithCountryCode => _phoneNumberWithCountryCode;
  set phoneNumberWithCountryCode(String value) {
    _phoneNumberWithCountryCode = value;
  }

  dynamic _propertyType = jsonDecode(
      '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
  dynamic get propertyType => _propertyType;
  set propertyType(dynamic value) {
    _propertyType = value;
  }

  String _httpshospitalitydevdemosidglobalcloud = '';
  String get httpshospitalitydevdemosidglobalcloud =>
      _httpshospitalitydevdemosidglobalcloud;
  set httpshospitalitydevdemosidglobalcloud(String value) {
    _httpshospitalitydevdemosidglobalcloud = value;
  }

  String _BaseUrl = 'https://hospitality-dev.demo.sidglobal.cloud';
  String get BaseUrl => _BaseUrl;
  set BaseUrl(String value) {
    _BaseUrl = value;
  }

  List<String> _propertyPhotos = [];
  List<String> get propertyPhotos => _propertyPhotos;
  set propertyPhotos(List<String> value) {
    _propertyPhotos = value;
  }

  void addToPropertyPhotos(String value) {
    propertyPhotos.add(value);
  }

  void removeFromPropertyPhotos(String value) {
    propertyPhotos.remove(value);
  }

  void removeAtIndexFromPropertyPhotos(int index) {
    propertyPhotos.removeAt(index);
  }

  void updatePropertyPhotosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    propertyPhotos[index] = updateFn(_propertyPhotos[index]);
  }

  void insertAtIndexInPropertyPhotos(int index, String value) {
    propertyPhotos.insert(index, value);
  }

  bool _disableProperty = true;
  bool get disableProperty => _disableProperty;
  set disableProperty(bool value) {
    _disableProperty = value;
  }

  List<String> _selectedAMNames = [];
  List<String> get selectedAMNames => _selectedAMNames;
  set selectedAMNames(List<String> value) {
    _selectedAMNames = value;
    prefs.setStringList('ff_selectedAMNames', value);
  }

  void addToSelectedAMNames(String value) {
    selectedAMNames.add(value);
    prefs.setStringList('ff_selectedAMNames', _selectedAMNames);
  }

  void removeFromSelectedAMNames(String value) {
    selectedAMNames.remove(value);
    prefs.setStringList('ff_selectedAMNames', _selectedAMNames);
  }

  void removeAtIndexFromSelectedAMNames(int index) {
    selectedAMNames.removeAt(index);
    prefs.setStringList('ff_selectedAMNames', _selectedAMNames);
  }

  void updateSelectedAMNamesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedAMNames[index] = updateFn(_selectedAMNames[index]);
    prefs.setStringList('ff_selectedAMNames', _selectedAMNames);
  }

  void insertAtIndexInSelectedAMNames(int index, String value) {
    selectedAMNames.insert(index, value);
    prefs.setStringList('ff_selectedAMNames', _selectedAMNames);
  }

  List<dynamic> _propertyTypeApiDataLoad = [];
  List<dynamic> get propertyTypeApiDataLoad => _propertyTypeApiDataLoad;
  set propertyTypeApiDataLoad(List<dynamic> value) {
    _propertyTypeApiDataLoad = value;
  }

  void addToPropertyTypeApiDataLoad(dynamic value) {
    propertyTypeApiDataLoad.add(value);
  }

  void removeFromPropertyTypeApiDataLoad(dynamic value) {
    propertyTypeApiDataLoad.remove(value);
  }

  void removeAtIndexFromPropertyTypeApiDataLoad(int index) {
    propertyTypeApiDataLoad.removeAt(index);
  }

  void updatePropertyTypeApiDataLoadAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    propertyTypeApiDataLoad[index] = updateFn(_propertyTypeApiDataLoad[index]);
  }

  void insertAtIndexInPropertyTypeApiDataLoad(int index, dynamic value) {
    propertyTypeApiDataLoad.insert(index, value);
  }

  int _nightsForStay = 0;
  int get nightsForStay => _nightsForStay;
  set nightsForStay(int value) {
    _nightsForStay = value;
  }

  List<String> _propertyReservation = [];
  List<String> get propertyReservation => _propertyReservation;
  set propertyReservation(List<String> value) {
    _propertyReservation = value;
  }

  void addToPropertyReservation(String value) {
    propertyReservation.add(value);
  }

  void removeFromPropertyReservation(String value) {
    propertyReservation.remove(value);
  }

  void removeAtIndexFromPropertyReservation(int index) {
    propertyReservation.removeAt(index);
  }

  void updatePropertyReservationAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    propertyReservation[index] = updateFn(_propertyReservation[index]);
  }

  void insertAtIndexInPropertyReservation(int index, String value) {
    propertyReservation.insert(index, value);
  }

  double _priceMin = 500.0;
  double get priceMin => _priceMin;
  set priceMin(double value) {
    _priceMin = value;
  }

  double _priceMax = 99999.0;
  double get priceMax => _priceMax;
  set priceMax(double value) {
    _priceMax = value;
  }

  List<int> _userSelectedAMfilter = [];
  List<int> get userSelectedAMfilter => _userSelectedAMfilter;
  set userSelectedAMfilter(List<int> value) {
    _userSelectedAMfilter = value;
  }

  void addToUserSelectedAMfilter(int value) {
    userSelectedAMfilter.add(value);
  }

  void removeFromUserSelectedAMfilter(int value) {
    userSelectedAMfilter.remove(value);
  }

  void removeAtIndexFromUserSelectedAMfilter(int index) {
    userSelectedAMfilter.removeAt(index);
  }

  void updateUserSelectedAMfilterAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    userSelectedAMfilter[index] = updateFn(_userSelectedAMfilter[index]);
  }

  void insertAtIndexInUserSelectedAMfilter(int index, int value) {
    userSelectedAMfilter.insert(index, value);
  }

  List<String> _userSelectedAMfilterName = [];
  List<String> get userSelectedAMfilterName => _userSelectedAMfilterName;
  set userSelectedAMfilterName(List<String> value) {
    _userSelectedAMfilterName = value;
  }

  void addToUserSelectedAMfilterName(String value) {
    userSelectedAMfilterName.add(value);
  }

  void removeFromUserSelectedAMfilterName(String value) {
    userSelectedAMfilterName.remove(value);
  }

  void removeAtIndexFromUserSelectedAMfilterName(int index) {
    userSelectedAMfilterName.removeAt(index);
  }

  void updateUserSelectedAMfilterNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    userSelectedAMfilterName[index] =
        updateFn(_userSelectedAMfilterName[index]);
  }

  void insertAtIndexInUserSelectedAMfilterName(int index, String value) {
    userSelectedAMfilterName.insert(index, value);
  }

  List<String> _supportedFileExtensions = ['png', 'jpg', 'jpeg', 'heic', 'svg'];
  List<String> get supportedFileExtensions => _supportedFileExtensions;
  set supportedFileExtensions(List<String> value) {
    _supportedFileExtensions = value;
  }

  void addToSupportedFileExtensions(String value) {
    supportedFileExtensions.add(value);
  }

  void removeFromSupportedFileExtensions(String value) {
    supportedFileExtensions.remove(value);
  }

  void removeAtIndexFromSupportedFileExtensions(int index) {
    supportedFileExtensions.removeAt(index);
  }

  void updateSupportedFileExtensionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    supportedFileExtensions[index] = updateFn(_supportedFileExtensions[index]);
  }

  void insertAtIndexInSupportedFileExtensions(int index, String value) {
    supportedFileExtensions.insert(index, value);
  }

  List<String> _imgs = [
    'https://picsum.photos/seed/95/600',
    'https://picsum.photos/seed/585/600',
    'https://picsum.photos/seed/532/600'
  ];
  List<String> get imgs => _imgs;
  set imgs(List<String> value) {
    _imgs = value;
  }

  void addToImgs(String value) {
    imgs.add(value);
  }

  void removeFromImgs(String value) {
    imgs.remove(value);
  }

  void removeAtIndexFromImgs(int index) {
    imgs.removeAt(index);
  }

  void updateImgsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    imgs[index] = updateFn(_imgs[index]);
  }

  void insertAtIndexInImgs(int index, String value) {
    imgs.insert(index, value);
  }

  List<String> _images = [];
  List<String> get images => _images;
  set images(List<String> value) {
    _images = value;
  }

  void addToImages(String value) {
    images.add(value);
  }

  void removeFromImages(String value) {
    images.remove(value);
  }

  void removeAtIndexFromImages(int index) {
    images.removeAt(index);
  }

  void updateImagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    images[index] = updateFn(_images[index]);
  }

  void insertAtIndexInImages(int index, String value) {
    images.insert(index, value);
  }

  List<int> _userFilterPropertyType = [];
  List<int> get userFilterPropertyType => _userFilterPropertyType;
  set userFilterPropertyType(List<int> value) {
    _userFilterPropertyType = value;
  }

  void addToUserFilterPropertyType(int value) {
    userFilterPropertyType.add(value);
  }

  void removeFromUserFilterPropertyType(int value) {
    userFilterPropertyType.remove(value);
  }

  void removeAtIndexFromUserFilterPropertyType(int index) {
    userFilterPropertyType.removeAt(index);
  }

  void updateUserFilterPropertyTypeAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    userFilterPropertyType[index] = updateFn(_userFilterPropertyType[index]);
  }

  void insertAtIndexInUserFilterPropertyType(int index, int value) {
    userFilterPropertyType.insert(index, value);
  }

  List<int> _userFilterSecurityAmenities = [];
  List<int> get userFilterSecurityAmenities => _userFilterSecurityAmenities;
  set userFilterSecurityAmenities(List<int> value) {
    _userFilterSecurityAmenities = value;
  }

  void addToUserFilterSecurityAmenities(int value) {
    userFilterSecurityAmenities.add(value);
  }

  void removeFromUserFilterSecurityAmenities(int value) {
    userFilterSecurityAmenities.remove(value);
  }

  void removeAtIndexFromUserFilterSecurityAmenities(int index) {
    userFilterSecurityAmenities.removeAt(index);
  }

  void updateUserFilterSecurityAmenitiesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    userFilterSecurityAmenities[index] =
        updateFn(_userFilterSecurityAmenities[index]);
  }

  void insertAtIndexInUserFilterSecurityAmenities(int index, int value) {
    userFilterSecurityAmenities.insert(index, value);
  }

  List<int> _userFilterBasicAmenities = [];
  List<int> get userFilterBasicAmenities => _userFilterBasicAmenities;
  set userFilterBasicAmenities(List<int> value) {
    _userFilterBasicAmenities = value;
  }

  void addToUserFilterBasicAmenities(int value) {
    userFilterBasicAmenities.add(value);
  }

  void removeFromUserFilterBasicAmenities(int value) {
    userFilterBasicAmenities.remove(value);
  }

  void removeAtIndexFromUserFilterBasicAmenities(int index) {
    userFilterBasicAmenities.removeAt(index);
  }

  void updateUserFilterBasicAmenitiesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    userFilterBasicAmenities[index] =
        updateFn(_userFilterBasicAmenities[index]);
  }

  void insertAtIndexInUserFilterBasicAmenities(int index, int value) {
    userFilterBasicAmenities.insert(index, value);
  }

  String _searchLocality = '';
  String get searchLocality => _searchLocality;
  set searchLocality(String value) {
    _searchLocality = value;
  }

  String _searchCity = '';
  String get searchCity => _searchCity;
  set searchCity(String value) {
    _searchCity = value;
  }

  int _searchGuests = 0;
  int get searchGuests => _searchGuests;
  set searchGuests(int value) {
    _searchGuests = value;
  }

  String _onTapPropertyReservationWeb = 'today\'s-checkin';
  String get onTapPropertyReservationWeb => _onTapPropertyReservationWeb;
  set onTapPropertyReservationWeb(String value) {
    _onTapPropertyReservationWeb = value;
  }

  String _refreshToken = '';
  String get refreshToken => _refreshToken;
  set refreshToken(String value) {
    _refreshToken = value;
    prefs.setString('ff_refreshToken', value);
  }

  bool _isEnableSearch = false;
  bool get isEnableSearch => _isEnableSearch;
  set isEnableSearch(bool value) {
    _isEnableSearch = value;
  }

  bool _isHostDashboardEnabled = false;
  bool get isHostDashboardEnabled => _isHostDashboardEnabled;
  set isHostDashboardEnabled(bool value) {
    _isHostDashboardEnabled = value;
  }

  List<DateTime> _searchSelectedDates = [];
  List<DateTime> get searchSelectedDates => _searchSelectedDates;
  set searchSelectedDates(List<DateTime> value) {
    _searchSelectedDates = value;
  }

  void addToSearchSelectedDates(DateTime value) {
    searchSelectedDates.add(value);
  }

  void removeFromSearchSelectedDates(DateTime value) {
    searchSelectedDates.remove(value);
  }

  void removeAtIndexFromSearchSelectedDates(int index) {
    searchSelectedDates.removeAt(index);
  }

  void updateSearchSelectedDatesAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    searchSelectedDates[index] = updateFn(_searchSelectedDates[index]);
  }

  void insertAtIndexInSearchSelectedDates(int index, DateTime value) {
    searchSelectedDates.insert(index, value);
  }

  UserDataStruct _userData = UserDataStruct();
  UserDataStruct get userData => _userData;
  set userData(UserDataStruct value) {
    _userData = value;
    prefs.setString('ff_userData', value.serialize());
  }

  void updateUserDataStruct(Function(UserDataStruct) updateFn) {
    updateFn(_userData);
    prefs.setString('ff_userData', _userData.serialize());
  }

  int _searchResultCount = 0;
  int get searchResultCount => _searchResultCount;
  set searchResultCount(int value) {
    _searchResultCount = value;
  }

  List<int> _SelectedAmenities = [];
  List<int> get SelectedAmenities => _SelectedAmenities;
  set SelectedAmenities(List<int> value) {
    _SelectedAmenities = value;
    prefs.setStringList(
        'ff_SelectedAmenities', value.map((x) => x.toString()).toList());
  }

  void addToSelectedAmenities(int value) {
    SelectedAmenities.add(value);
    prefs.setStringList('ff_SelectedAmenities',
        _SelectedAmenities.map((x) => x.toString()).toList());
  }

  void removeFromSelectedAmenities(int value) {
    SelectedAmenities.remove(value);
    prefs.setStringList('ff_SelectedAmenities',
        _SelectedAmenities.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromSelectedAmenities(int index) {
    SelectedAmenities.removeAt(index);
    prefs.setStringList('ff_SelectedAmenities',
        _SelectedAmenities.map((x) => x.toString()).toList());
  }

  void updateSelectedAmenitiesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    SelectedAmenities[index] = updateFn(_SelectedAmenities[index]);
    prefs.setStringList('ff_SelectedAmenities',
        _SelectedAmenities.map((x) => x.toString()).toList());
  }

  void insertAtIndexInSelectedAmenities(int index, int value) {
    SelectedAmenities.insert(index, value);
    prefs.setStringList('ff_SelectedAmenities',
        _SelectedAmenities.map((x) => x.toString()).toList());
  }

  int _webHostSaveRoute = 0;
  int get webHostSaveRoute => _webHostSaveRoute;
  set webHostSaveRoute(int value) {
    _webHostSaveRoute = value;
    prefs.setInt('ff_webHostSaveRoute', value);
  }

  List<DateTime> _rangeOfSelectedDates = [];
  List<DateTime> get rangeOfSelectedDates => _rangeOfSelectedDates;
  set rangeOfSelectedDates(List<DateTime> value) {
    _rangeOfSelectedDates = value;
  }

  void addToRangeOfSelectedDates(DateTime value) {
    rangeOfSelectedDates.add(value);
  }

  void removeFromRangeOfSelectedDates(DateTime value) {
    rangeOfSelectedDates.remove(value);
  }

  void removeAtIndexFromRangeOfSelectedDates(int index) {
    rangeOfSelectedDates.removeAt(index);
  }

  void updateRangeOfSelectedDatesAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    rangeOfSelectedDates[index] = updateFn(_rangeOfSelectedDates[index]);
  }

  void insertAtIndexInRangeOfSelectedDates(int index, DateTime value) {
    rangeOfSelectedDates.insert(index, value);
  }

  BookingDetailsStruct _bookingDetails = BookingDetailsStruct();
  BookingDetailsStruct get bookingDetails => _bookingDetails;
  set bookingDetails(BookingDetailsStruct value) {
    _bookingDetails = value;
  }

  void updateBookingDetailsStruct(Function(BookingDetailsStruct) updateFn) {
    updateFn(_bookingDetails);
  }

  List<DateTime> _searchDates = [];
  List<DateTime> get searchDates => _searchDates;
  set searchDates(List<DateTime> value) {
    _searchDates = value;
  }

  void addToSearchDates(DateTime value) {
    searchDates.add(value);
  }

  void removeFromSearchDates(DateTime value) {
    searchDates.remove(value);
  }

  void removeAtIndexFromSearchDates(int index) {
    searchDates.removeAt(index);
  }

  void updateSearchDatesAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    searchDates[index] = updateFn(_searchDates[index]);
  }

  void insertAtIndexInSearchDates(int index, DateTime value) {
    searchDates.insert(index, value);
  }

  dynamic _rzpPaymentResp;
  dynamic get rzpPaymentResp => _rzpPaymentResp;
  set rzpPaymentResp(dynamic value) {
    _rzpPaymentResp = value;
  }

  TripsStatusStruct _tripsStatus = TripsStatusStruct.fromSerializableMap(jsonDecode(
      '{\"upComing\":\"true\",\"cancelled\":\"false\",\"completed\":\"false\"}'));
  TripsStatusStruct get tripsStatus => _tripsStatus;
  set tripsStatus(TripsStatusStruct value) {
    _tripsStatus = value;
  }

  void updateTripsStatusStruct(Function(TripsStatusStruct) updateFn) {
    updateFn(_tripsStatus);
  }

  OnTapHostDashboardStruct _onTapHostDbOptions =
      OnTapHostDashboardStruct.fromSerializableMap(
          jsonDecode('{\"active_tab\":\"true\"}'));
  OnTapHostDashboardStruct get onTapHostDbOptions => _onTapHostDbOptions;
  set onTapHostDbOptions(OnTapHostDashboardStruct value) {
    _onTapHostDbOptions = value;
  }

  void updateOnTapHostDbOptionsStruct(
      Function(OnTapHostDashboardStruct) updateFn) {
    updateFn(_onTapHostDbOptions);
  }

  String _randomOTP = '';
  String get randomOTP => _randomOTP;
  set randomOTP(String value) {
    _randomOTP = value;
  }

  int _userMobileNum = 0;
  int get userMobileNum => _userMobileNum;
  set userMobileNum(int value) {
    _userMobileNum = value;
  }

  bool _endTimer = false;
  bool get endTimer => _endTimer;
  set endTimer(bool value) {
    _endTimer = value;
  }

  bool _startTimer = false;
  bool get startTimer => _startTimer;
  set startTimer(bool value) {
    _startTimer = value;
  }

  List<dynamic> _citySearch = [];
  List<dynamic> get citySearch => _citySearch;
  set citySearch(List<dynamic> value) {
    _citySearch = value;
  }

  void addToCitySearch(dynamic value) {
    citySearch.add(value);
  }

  void removeFromCitySearch(dynamic value) {
    citySearch.remove(value);
  }

  void removeAtIndexFromCitySearch(int index) {
    citySearch.removeAt(index);
  }

  void updateCitySearchAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    citySearch[index] = updateFn(_citySearch[index]);
  }

  void insertAtIndexInCitySearch(int index, dynamic value) {
    citySearch.insert(index, value);
  }

  List<dynamic> _localitySearch = [];
  List<dynamic> get localitySearch => _localitySearch;
  set localitySearch(List<dynamic> value) {
    _localitySearch = value;
  }

  void addToLocalitySearch(dynamic value) {
    localitySearch.add(value);
  }

  void removeFromLocalitySearch(dynamic value) {
    localitySearch.remove(value);
  }

  void removeAtIndexFromLocalitySearch(int index) {
    localitySearch.removeAt(index);
  }

  void updateLocalitySearchAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    localitySearch[index] = updateFn(_localitySearch[index]);
  }

  void insertAtIndexInLocalitySearch(int index, dynamic value) {
    localitySearch.insert(index, value);
  }

  String _onchangeFilter = '';
  String get onchangeFilter => _onchangeFilter;
  set onchangeFilter(String value) {
    _onchangeFilter = value;
  }

  List<String> _ExHostSelectedAMNames = [];
  List<String> get ExHostSelectedAMNames => _ExHostSelectedAMNames;
  set ExHostSelectedAMNames(List<String> value) {
    _ExHostSelectedAMNames = value;
  }

  void addToExHostSelectedAMNames(String value) {
    ExHostSelectedAMNames.add(value);
  }

  void removeFromExHostSelectedAMNames(String value) {
    ExHostSelectedAMNames.remove(value);
  }

  void removeAtIndexFromExHostSelectedAMNames(int index) {
    ExHostSelectedAMNames.removeAt(index);
  }

  void updateExHostSelectedAMNamesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ExHostSelectedAMNames[index] = updateFn(_ExHostSelectedAMNames[index]);
  }

  void insertAtIndexInExHostSelectedAMNames(int index, String value) {
    ExHostSelectedAMNames.insert(index, value);
  }

  List<int> _ExHostSelctedAM = [];
  List<int> get ExHostSelctedAM => _ExHostSelctedAM;
  set ExHostSelctedAM(List<int> value) {
    _ExHostSelctedAM = value;
  }

  void addToExHostSelctedAM(int value) {
    ExHostSelctedAM.add(value);
  }

  void removeFromExHostSelctedAM(int value) {
    ExHostSelctedAM.remove(value);
  }

  void removeAtIndexFromExHostSelctedAM(int index) {
    ExHostSelctedAM.removeAt(index);
  }

  void updateExHostSelctedAMAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    ExHostSelctedAM[index] = updateFn(_ExHostSelctedAM[index]);
  }

  void insertAtIndexInExHostSelctedAM(int index, int value) {
    ExHostSelctedAM.insert(index, value);
  }

  dynamic _ExHostPropertySubType =
      jsonDecode('{\"name\":\"1 BHK\",\"id\":\"72288\"}');
  dynamic get ExHostPropertySubType => _ExHostPropertySubType;
  set ExHostPropertySubType(dynamic value) {
    _ExHostPropertySubType = value;
  }

  dynamic _ExHostPropertyType = jsonDecode(
      '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
  dynamic get ExHostPropertyType => _ExHostPropertyType;
  set ExHostPropertyType(dynamic value) {
    _ExHostPropertyType = value;
  }

  ExHostJourneyStruct _ExternalHostJourney = ExHostJourneyStruct();
  ExHostJourneyStruct get ExternalHostJourney => _ExternalHostJourney;
  set ExternalHostJourney(ExHostJourneyStruct value) {
    _ExternalHostJourney = value;
  }

  void updateExternalHostJourneyStruct(Function(ExHostJourneyStruct) updateFn) {
    updateFn(_ExternalHostJourney);
  }

  int _welcomeIndex = 1;
  int get welcomeIndex => _welcomeIndex;
  set welcomeIndex(int value) {
    _welcomeIndex = value;
  }

  LocationDetailsStruct _LocationDetails = LocationDetailsStruct();
  LocationDetailsStruct get LocationDetails => _LocationDetails;
  set LocationDetails(LocationDetailsStruct value) {
    _LocationDetails = value;
  }

  void updateLocationDetailsStruct(Function(LocationDetailsStruct) updateFn) {
    updateFn(_LocationDetails);
  }

  dynamic _assignedPI = jsonDecode('null');
  dynamic get assignedPI => _assignedPI;
  set assignedPI(dynamic value) {
    _assignedPI = value;
  }

  bool _exHostAcceptTC = false;
  bool get exHostAcceptTC => _exHostAcceptTC;
  set exHostAcceptTC(bool value) {
    _exHostAcceptTC = value;
  }

  AdminLeasePropertyDetailViewStruct _AdminLeasePropertyDetailView =
      AdminLeasePropertyDetailViewStruct();
  AdminLeasePropertyDetailViewStruct get AdminLeasePropertyDetailView =>
      _AdminLeasePropertyDetailView;
  set AdminLeasePropertyDetailView(AdminLeasePropertyDetailViewStruct value) {
    _AdminLeasePropertyDetailView = value;
  }

  void updateAdminLeasePropertyDetailViewStruct(
      Function(AdminLeasePropertyDetailViewStruct) updateFn) {
    updateFn(_AdminLeasePropertyDetailView);
  }

  HostDetailViewStruct _HostDetailView = HostDetailViewStruct();
  HostDetailViewStruct get HostDetailView => _HostDetailView;
  set HostDetailView(HostDetailViewStruct value) {
    _HostDetailView = value;
  }

  void updateHostDetailViewStruct(Function(HostDetailViewStruct) updateFn) {
    updateFn(_HostDetailView);
  }

  TermsAndConditionsStruct _TermsAndConditions = TermsAndConditionsStruct();
  TermsAndConditionsStruct get TermsAndConditions => _TermsAndConditions;
  set TermsAndConditions(TermsAndConditionsStruct value) {
    _TermsAndConditions = value;
  }

  void updateTermsAndConditionsStruct(
      Function(TermsAndConditionsStruct) updateFn) {
    updateFn(_TermsAndConditions);
  }

  ManageBookingDetailsStruct _ManageBookingDetails =
      ManageBookingDetailsStruct();
  ManageBookingDetailsStruct get ManageBookingDetails => _ManageBookingDetails;
  set ManageBookingDetails(ManageBookingDetailsStruct value) {
    _ManageBookingDetails = value;
  }

  void updateManageBookingDetailsStruct(
      Function(ManageBookingDetailsStruct) updateFn) {
    updateFn(_ManageBookingDetails);
  }

  PropertyDetailsPageStruct _PropertyDetailsPage = PropertyDetailsPageStruct();
  PropertyDetailsPageStruct get PropertyDetailsPage => _PropertyDetailsPage;
  set PropertyDetailsPage(PropertyDetailsPageStruct value) {
    _PropertyDetailsPage = value;
  }

  void updatePropertyDetailsPageStruct(
      Function(PropertyDetailsPageStruct) updateFn) {
    updateFn(_PropertyDetailsPage);
  }

  BookingDetailsPageStruct _BookingDetailsPage = BookingDetailsPageStruct();
  BookingDetailsPageStruct get BookingDetailsPage => _BookingDetailsPage;
  set BookingDetailsPage(BookingDetailsPageStruct value) {
    _BookingDetailsPage = value;
  }

  void updateBookingDetailsPageStruct(
      Function(BookingDetailsPageStruct) updateFn) {
    updateFn(_BookingDetailsPage);
  }

  ModifyBookingPageStruct _ModifyBookingPage = ModifyBookingPageStruct();
  ModifyBookingPageStruct get ModifyBookingPage => _ModifyBookingPage;
  set ModifyBookingPage(ModifyBookingPageStruct value) {
    _ModifyBookingPage = value;
  }

  void updateModifyBookingPageStruct(
      Function(ModifyBookingPageStruct) updateFn) {
    updateFn(_ModifyBookingPage);
  }

  ExHostDetailViewStruct _ExHostDetailView = ExHostDetailViewStruct();
  ExHostDetailViewStruct get ExHostDetailView => _ExHostDetailView;
  set ExHostDetailView(ExHostDetailViewStruct value) {
    _ExHostDetailView = value;
  }

  void updateExHostDetailViewStruct(Function(ExHostDetailViewStruct) updateFn) {
    updateFn(_ExHostDetailView);
  }

  bool _postalCodeLocalities = false;
  bool get postalCodeLocalities => _postalCodeLocalities;
  set postalCodeLocalities(bool value) {
    _postalCodeLocalities = value;
  }

  DateTime? _launchApp;
  DateTime? get launchApp => _launchApp;
  set launchApp(DateTime? value) {
    _launchApp = value;
    value != null
        ? prefs.setInt('ff_launchApp', value.millisecondsSinceEpoch)
        : prefs.remove('ff_launchApp');
  }

  bool _homeScreen = false;
  bool get homeScreen => _homeScreen;
  set homeScreen(bool value) {
    _homeScreen = value;
  }

  Color _bngnjuikiukukk = Colors.transparent;
  Color get bngnjuikiukukk => _bngnjuikiukukk;
  set bngnjuikiukukk(Color value) {
    _bngnjuikiukukk = value;
  }

  bool _skipforHome = false;
  bool get skipforHome => _skipforHome;
  set skipforHome(bool value) {
    _skipforHome = value;
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
  }

  PIDetailViewStruct _PIdetailView = PIDetailViewStruct();
  PIDetailViewStruct get PIdetailView => _PIdetailView;
  set PIdetailView(PIDetailViewStruct value) {
    _PIdetailView = value;
  }

  void updatePIdetailViewStruct(Function(PIDetailViewStruct) updateFn) {
    updateFn(_PIdetailView);
  }

  List<dynamic> _piFormAdditionalFiles = [];
  List<dynamic> get piFormAdditionalFiles => _piFormAdditionalFiles;
  set piFormAdditionalFiles(List<dynamic> value) {
    _piFormAdditionalFiles = value;
  }

  void addToPiFormAdditionalFiles(dynamic value) {
    piFormAdditionalFiles.add(value);
  }

  void removeFromPiFormAdditionalFiles(dynamic value) {
    piFormAdditionalFiles.remove(value);
  }

  void removeAtIndexFromPiFormAdditionalFiles(int index) {
    piFormAdditionalFiles.removeAt(index);
  }

  void updatePiFormAdditionalFilesAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    piFormAdditionalFiles[index] = updateFn(_piFormAdditionalFiles[index]);
  }

  void insertAtIndexInPiFormAdditionalFiles(int index, dynamic value) {
    piFormAdditionalFiles.insert(index, value);
  }

  dynamic _assignedPILocationNF = jsonDecode(
      '{\"roleId\":\"78887\",\"roleName\":\"Property Inspector\",\"userLocation\":\"Hyderabad\",\"userName\":\"Hyd PIOne\",\"userId\":\"79626\"}');
  dynamic get assignedPILocationNF => _assignedPILocationNF;
  set assignedPILocationNF(dynamic value) {
    _assignedPILocationNF = value;
  }

  PiDashboardStatusStruct _piDashboardStatus =
      PiDashboardStatusStruct.fromSerializableMap(
          jsonDecode('{\"assignedtasks\":\"true\"}'));
  PiDashboardStatusStruct get piDashboardStatus => _piDashboardStatus;
  set piDashboardStatus(PiDashboardStatusStruct value) {
    _piDashboardStatus = value;
  }

  void updatePiDashboardStatusStruct(
      Function(PiDashboardStatusStruct) updateFn) {
    updateFn(_piDashboardStatus);
  }

  bool _box = false;
  bool get box => _box;
  set box(bool value) {
    _box = value;
  }

  ATDetailViewStruct _atDetailView = ATDetailViewStruct();
  ATDetailViewStruct get atDetailView => _atDetailView;
  set atDetailView(ATDetailViewStruct value) {
    _atDetailView = value;
  }

  void updateAtDetailViewStruct(Function(ATDetailViewStruct) updateFn) {
    updateFn(_atDetailView);
  }

  ATDashboardStatusStruct _atDashboardStatus = ATDashboardStatusStruct();
  ATDashboardStatusStruct get atDashboardStatus => _atDashboardStatus;
  set atDashboardStatus(ATDashboardStatusStruct value) {
    _atDashboardStatus = value;
  }

  void updateAtDashboardStatusStruct(
      Function(ATDashboardStatusStruct) updateFn) {
    updateFn(_atDashboardStatus);
  }

  dynamic _assignedATLocationNF = jsonDecode(
      '{\"roleId\":\"84880\",\"roleName\":\"Architect\",\"userLocation\":\"Bangalore\",\"userName\":\"Blr Architectone\",\"userId\":\"103572\"}');
  dynamic get assignedATLocationNF => _assignedATLocationNF;
  set assignedATLocationNF(dynamic value) {
    _assignedATLocationNF = value;
  }

  dynamic _assignedAT = jsonDecode('null');
  dynamic get assignedAT => _assignedAT;
  set assignedAT(dynamic value) {
    _assignedAT = value;
  }

  AtDynamicFieldsDataStruct _atDynamicFields = AtDynamicFieldsDataStruct();
  AtDynamicFieldsDataStruct get atDynamicFields => _atDynamicFields;
  set atDynamicFields(AtDynamicFieldsDataStruct value) {
    _atDynamicFields = value;
  }

  void updateAtDynamicFieldsStruct(
      Function(AtDynamicFieldsDataStruct) updateFn) {
    updateFn(_atDynamicFields);
  }

  DashboardStatusResponseStruct _DashboardStatusResponse =
      DashboardStatusResponseStruct();
  DashboardStatusResponseStruct get DashboardStatusResponse =>
      _DashboardStatusResponse;
  set DashboardStatusResponse(DashboardStatusResponseStruct value) {
    _DashboardStatusResponse = value;
  }

  void updateDashboardStatusResponseStruct(
      Function(DashboardStatusResponseStruct) updateFn) {
    updateFn(_DashboardStatusResponse);
  }

  List<String> _hardCoded = [
    'https://luxury-homes-cdn.s3.amazonaws.com/1713937184475000_0.jpg',
    'https://luxury-homes-cdn.s3.amazonaws.com/1713937184476000_1.jpg',
    'https://img.freepik.com/free-photo/cute-domestic-kitten-sits-window-staring-outside-generative-ai_188544-12519.jpg'
  ];
  List<String> get hardCoded => _hardCoded;
  set hardCoded(List<String> value) {
    _hardCoded = value;
  }

  void addToHardCoded(String value) {
    hardCoded.add(value);
  }

  void removeFromHardCoded(String value) {
    hardCoded.remove(value);
  }

  void removeAtIndexFromHardCoded(int index) {
    hardCoded.removeAt(index);
  }

  void updateHardCodedAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    hardCoded[index] = updateFn(_hardCoded[index]);
  }

  void insertAtIndexInHardCoded(int index, String value) {
    hardCoded.insert(index, value);
  }

  LoginStatusStruct _loginStatus = LoginStatusStruct.fromSerializableMap(
      jsonDecode('{\"loginwithEmail\":\"true\"}'));
  LoginStatusStruct get loginStatus => _loginStatus;
  set loginStatus(LoginStatusStruct value) {
    _loginStatus = value;
  }

  void updateLoginStatusStruct(Function(LoginStatusStruct) updateFn) {
    updateFn(_loginStatus);
  }

  InternalPropertyHostingDataStruct _internalPropertyHostingDetails =
      InternalPropertyHostingDataStruct();
  InternalPropertyHostingDataStruct get internalPropertyHostingDetails =>
      _internalPropertyHostingDetails;
  set internalPropertyHostingDetails(InternalPropertyHostingDataStruct value) {
    _internalPropertyHostingDetails = value;
  }

  void updateInternalPropertyHostingDetailsStruct(
      Function(InternalPropertyHostingDataStruct) updateFn) {
    updateFn(_internalPropertyHostingDetails);
  }

  PropertyBookingDetailsStruct _propertyBookingDetails =
      PropertyBookingDetailsStruct();
  PropertyBookingDetailsStruct get propertyBookingDetails =>
      _propertyBookingDetails;
  set propertyBookingDetails(PropertyBookingDetailsStruct value) {
    _propertyBookingDetails = value;
  }

  void updatePropertyBookingDetailsStruct(
      Function(PropertyBookingDetailsStruct) updateFn) {
    updateFn(_propertyBookingDetails);
  }

  int _partialBookedRooms = 0;
  int get partialBookedRooms => _partialBookedRooms;
  set partialBookedRooms(int value) {
    _partialBookedRooms = value;
  }

  dynamic _BookedDatesTestingPurpose;
  dynamic get BookedDatesTestingPurpose => _BookedDatesTestingPurpose;
  set BookedDatesTestingPurpose(dynamic value) {
    _BookedDatesTestingPurpose = value;
  }

  SearchPageParametersStruct _searchPageParameters =
      SearchPageParametersStruct();
  SearchPageParametersStruct get searchPageParameters => _searchPageParameters;
  set searchPageParameters(SearchPageParametersStruct value) {
    _searchPageParameters = value;
  }

  void updateSearchPageParametersStruct(
      Function(SearchPageParametersStruct) updateFn) {
    updateFn(_searchPageParameters);
  }

  SyncFisionCalendarDatesStruct _syncFisionCalendarDates =
      SyncFisionCalendarDatesStruct();
  SyncFisionCalendarDatesStruct get syncFisionCalendarDates =>
      _syncFisionCalendarDates;
  set syncFisionCalendarDates(SyncFisionCalendarDatesStruct value) {
    _syncFisionCalendarDates = value;
  }

  void updateSyncFisionCalendarDatesStruct(
      Function(SyncFisionCalendarDatesStruct) updateFn) {
    updateFn(_syncFisionCalendarDates);
  }

  int _propertyDetailsRebuildCallBackHelper = 0;
  int get propertyDetailsRebuildCallBackHelper =>
      _propertyDetailsRebuildCallBackHelper;
  set propertyDetailsRebuildCallBackHelper(int value) {
    _propertyDetailsRebuildCallBackHelper = value;
  }

  bool _onTapupComingTrip = false;
  bool get onTapupComingTrip => _onTapupComingTrip;
  set onTapupComingTrip(bool value) {
    _onTapupComingTrip = value;
  }

  dynamic _bookingDetailsPropertyId;
  dynamic get bookingDetailsPropertyId => _bookingDetailsPropertyId;
  set bookingDetailsPropertyId(dynamic value) {
    _bookingDetailsPropertyId = value;
  }

  int _bookingDetailsIndex = 0;
  int get bookingDetailsIndex => _bookingDetailsIndex;
  set bookingDetailsIndex(int value) {
    _bookingDetailsIndex = value;
  }

  final _propertyListingCacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> propertyListingCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _propertyListingCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearPropertyListingCacheCache() => _propertyListingCacheManager.clear();
  void clearPropertyListingCacheCacheKey(String? uniqueKey) =>
      _propertyListingCacheManager.clearRequest(uniqueKey);

  final _propertyTypeCacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> propertyTypeCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _propertyTypeCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearPropertyTypeCacheCache() => _propertyTypeCacheManager.clear();
  void clearPropertyTypeCacheCacheKey(String? uniqueKey) =>
      _propertyTypeCacheManager.clearRequest(uniqueKey);

  final _searchPageCacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> searchPageCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _searchPageCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSearchPageCacheCache() => _searchPageCacheManager.clear();
  void clearSearchPageCacheCacheKey(String? uniqueKey) =>
      _searchPageCacheManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
