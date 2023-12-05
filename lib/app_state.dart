import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _darkMode = prefs.getBool('ff_darkMode') ?? _darkMode;
    });
    _safeInit(() {
      _systemMessage = prefs.getString('ff_systemMessage') ?? _systemMessage;
    });
    _safeInit(() {
      _userReinforcement =
          prefs.getString('ff_userReinforcement') ?? _userReinforcement;
    });
    _safeInit(() {
      _gptOpener = prefs.getString('ff_gptOpener') ?? _gptOpener;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _darkMode = true;
  bool get darkMode => _darkMode;
  set darkMode(bool _value) {
    _darkMode = _value;
    prefs.setBool('ff_darkMode', _value);
  }

  int _pieSuccess = 60;
  int get pieSuccess => _pieSuccess;
  set pieSuccess(int _value) {
    _pieSuccess = _value;
  }

  int _piePending = 30;
  int get piePending => _piePending;
  set piePending(int _value) {
    _piePending = _value;
  }

  int _pieFailed = 10;
  int get pieFailed => _pieFailed;
  set pieFailed(int _value) {
    _pieFailed = _value;
  }

  List<String> _xAxis = [
    '22 June',
    '23 June',
    '24 June',
    '25 June',
    '26 June',
    '27 June',
    '28 June'
  ];
  List<String> get xAxis => _xAxis;
  set xAxis(List<String> _value) {
    _xAxis = _value;
  }

  void addToXAxis(String _value) {
    _xAxis.add(_value);
  }

  void removeFromXAxis(String _value) {
    _xAxis.remove(_value);
  }

  void removeAtIndexFromXAxis(int _index) {
    _xAxis.removeAt(_index);
  }

  void updateXAxisAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _xAxis[_index] = updateFn(_xAxis[_index]);
  }

  void insertAtIndexInXAxis(int _index, String _value) {
    _xAxis.insert(_index, _value);
  }

  List<int> _yAxis = [20, 30, 40, 35, 46, 40, 32];
  List<int> get yAxis => _yAxis;
  set yAxis(List<int> _value) {
    _yAxis = _value;
  }

  void addToYAxis(int _value) {
    _yAxis.add(_value);
  }

  void removeFromYAxis(int _value) {
    _yAxis.remove(_value);
  }

  void removeAtIndexFromYAxis(int _index) {
    _yAxis.removeAt(_index);
  }

  void updateYAxisAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _yAxis[_index] = updateFn(_yAxis[_index]);
  }

  void insertAtIndexInYAxis(int _index, int _value) {
    _yAxis.insert(_index, _value);
  }

  String _activePage = 'Dashboard';
  String get activePage => _activePage;
  set activePage(String _value) {
    _activePage = _value;
  }

  String _activePageSub = '';
  String get activePageSub => _activePageSub;
  set activePageSub(String _value) {
    _activePageSub = _value;
  }

  List<String> _menuOptions = [
    'dashboard',
    'orders',
    'products',
    'media',
    'customers',
    'sellers',
    'categories'
  ];
  List<String> get menuOptions => _menuOptions;
  set menuOptions(List<String> _value) {
    _menuOptions = _value;
  }

  void addToMenuOptions(String _value) {
    _menuOptions.add(_value);
  }

  void removeFromMenuOptions(String _value) {
    _menuOptions.remove(_value);
  }

  void removeAtIndexFromMenuOptions(int _index) {
    _menuOptions.removeAt(_index);
  }

  void updateMenuOptionsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _menuOptions[_index] = updateFn(_menuOptions[_index]);
  }

  void insertAtIndexInMenuOptions(int _index, String _value) {
    _menuOptions.insert(_index, _value);
  }

  String _systemMessage =
      'You are a helpful AI assistant that helps answer any questions people may have!';
  String get systemMessage => _systemMessage;
  set systemMessage(String _value) {
    _systemMessage = _value;
    prefs.setString('ff_systemMessage', _value);
  }

  String _userReinforcement =
      'Hello! Just to reiterate, you are a helpful AI assistant that helps answer any questions people may have!';
  String get userReinforcement => _userReinforcement;
  set userReinforcement(String _value) {
    _userReinforcement = _value;
    prefs.setString('ff_userReinforcement', _value);
  }

  String _gptOpener = 'How can I help you today?';
  String get gptOpener => _gptOpener;
  set gptOpener(String _value) {
    _gptOpener = _value;
    prefs.setString('ff_gptOpener', _value);
  }

  bool _awaitingReply = false;
  bool get awaitingReply => _awaitingReply;
  set awaitingReply(bool _value) {
    _awaitingReply = _value;
  }

  String _prompt = '';
  String get prompt => _prompt;
  set prompt(String _value) {
    _prompt = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
