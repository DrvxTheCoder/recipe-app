import 'package:flutter/material.dart';
import '/backend/backend.dart';
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

  List<int> _ingredientListcount = [0];
  List<int> get ingredientListcount => _ingredientListcount;
  set ingredientListcount(List<int> _value) {
    _ingredientListcount = _value;
  }

  void addToIngredientListcount(int _value) {
    _ingredientListcount.add(_value);
  }

  void removeFromIngredientListcount(int _value) {
    _ingredientListcount.remove(_value);
  }

  void removeAtIndexFromIngredientListcount(int _index) {
    _ingredientListcount.removeAt(_index);
  }

  void updateIngredientListcountAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _ingredientListcount[_index] = updateFn(_ingredientListcount[_index]);
  }

  void insertAtIndexInIngredientListcount(int _index, int _value) {
    _ingredientListcount.insert(_index, _value);
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
