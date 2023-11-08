import 'package:flutter/material.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
  }

  UserStruct _authenticatedUser = UserStruct();
  UserStruct get authenticatedUser => _authenticatedUser;
  set authenticatedUser(UserStruct _value) {
    _authenticatedUser = _value;
  }

  void updateAuthenticatedUserStruct(Function(UserStruct) updateFn) {
    updateFn(_authenticatedUser);
  }

  List<UserStruct> _users = [];
  List<UserStruct> get users => _users;
  set users(List<UserStruct> _value) {
    _users = _value;
  }

  void addToUsers(UserStruct _value) {
    _users.add(_value);
  }

  void removeFromUsers(UserStruct _value) {
    _users.remove(_value);
  }

  void removeAtIndexFromUsers(int _index) {
    _users.removeAt(_index);
  }

  void updateUsersAtIndex(
    int _index,
    UserStruct Function(UserStruct) updateFn,
  ) {
    _users[_index] = updateFn(_users[_index]);
  }

  void insertAtIndexInUsers(int _index, UserStruct _value) {
    _users.insert(_index, _value);
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
