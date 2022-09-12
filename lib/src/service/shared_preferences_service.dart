import 'package:rarguile/src/interfaces/shared_preferences_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService implements ISharedPreferencesService {
  late final SharedPreferences sharedPreferences;
  

  @override
  Future<void> writeString(String user) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('user', user);
  }

  @override
  Future<String?> readString() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('user');
  }

  @override
  Future<void> deleteString() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.remove('user');
  }
}

