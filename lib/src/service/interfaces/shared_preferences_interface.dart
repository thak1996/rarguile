abstract class ISharedPreferencesService {
  Future<void> writeString(String value);

  Future<String?> readString();

  Future<void> deleteString();
}
