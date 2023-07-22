abstract class SecureStorage {
  Future<void> saveToStorage(String key, String value);
  Future<bool> checkFromStorage(String key);
  dynamic getFromStorage(String key);
  Future<Map<String, dynamic>> getAllValuesFromStorage();
  Future<void> deleteFromStorage(String key);
  Future<void> deleteAllValueFromStorage();
}
