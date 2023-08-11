import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:powersense/view_model/source/secure_storage.dart';

class SecureStorageImpl extends SecureStorage {
  final storage = const FlutterSecureStorage();

  @override
  getFromStorage(key) async {
    return await storage.read(key: key);
  }

  @override
  Future<bool> checkFromStorage(String key) async {
    try {
      return await storage.containsKey(key: key);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> saveToStorage(String key, String value) async {
    try {
      return await storage.write(key: key, value: value);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> deleteAllValueFromStorage() async {
    try {
      return await storage.deleteAll();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> deleteFromStorage(String key) async {
    try {
      return await storage.delete(key: key);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<Map<String, dynamic>> getAllValuesFromStorage() async {
    try {
      return await storage.readAll();
    } catch (e) {
      return <String, dynamic>{};
    }
  }
}
