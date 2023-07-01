abstract class SecureStorage {
  void saveToStorage(String key, String value);
  Future<bool> checkFromStorage(String key);
  dynamic getFromStorage(String key);
  Future<Map<String, dynamic>> getAllValuesFromStorage();
  void deleteFromStorage(String key);
  void deleteAllValueFromStorage();
}
