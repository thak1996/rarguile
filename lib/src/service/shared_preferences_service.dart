import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  late final SharedPreferences sharedPreferences;

static Future<void> writeString(String user) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('user', user);
  }

 static Future<String?> readString() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('user');
  }

   static Future<void> deleteString() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.remove('user');
  }

}