import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLocal {
  Future<SharedPreferences> get _instance => SharedPreferences.getInstance();

  Future<void> clear() async {
    final sharedPreferences = await _instance;
    sharedPreferences.clear();
  }

  Future<bool> contains(String key) async {
    final sharedPreferences = await _instance;
    return sharedPreferences.containsKey(key);
  }

  Future<V?> read<V>(String key) async {
    final sharedPreferences = await _instance;
    return sharedPreferences.get(key) as V?;
  }

  Future<void> remove(String key) async {
    final sharedPreferences = await _instance;
    sharedPreferences.remove(key);
  }

  Future<void> write<V>(String key, V value) async {
    final sharedPreferences = await _instance;

    switch (V) {
      case String:
        {
          await sharedPreferences.setString(key, value as String);
          break;
        }
      case int:
        {
          await sharedPreferences.setInt(key, value as int);
          break;
        }
      case bool:
        {
          await sharedPreferences.setBool(key, value as bool);
          break;
        }
      case double:
        {
          await sharedPreferences.setDouble(key, value as double);
          break;
        }
      case const (List<String>): //Atenção
        {
          await sharedPreferences.setStringList(key, value as List<String>);
          break;
        }
      default:
        {
          throw Exception('Type not suported - SPLSI');
        }
    }
  }
}
