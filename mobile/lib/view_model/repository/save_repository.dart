import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:powersense/model/saved_model.dart';
import 'package:powersense/view_model/source/secure_storage.dart';
import 'package:powersense/view_model/source/secure_storage_impl.dart';
import 'package:uuid/uuid.dart';

abstract class SaveRepository {
  Future<Either<String, SavedModel>> saveHistory(SavedModel model);
  Future<Either<String, String>> deleteHistory(String id);
  Future<List<SavedModel>> loadAllSavedHistory();
}

class SaveRepositoryImpl extends SaveRepository {
  SecureStorage secureStorage = SecureStorageImpl();
  Uuid uuid = const Uuid();

  @override
  Future<List<SavedModel>> loadAllSavedHistory() async {
    final results = await secureStorage.getAllValuesFromStorage();
    List<SavedModel> listSaved = <SavedModel>[];
    results.forEach((key, value) {
      final savedModel = SavedModel.fromJson(jsonDecode(value));
      listSaved.add(savedModel);
    });
    return listSaved;
  }

  @override
  Future<Either<String, SavedModel>> saveHistory(SavedModel model) async {
    final newSavedModel = model.copyWith(
      isSaved: true,
      id: uuid.v4(),
    );
    try {
      await secureStorage.saveToStorage(
          newSavedModel.id, jsonEncode(newSavedModel));
      return right(newSavedModel);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> deleteHistory(String id) async {
    try {
      await secureStorage.deleteFromStorage(id);
      return right("success");
    } catch (e) {
      return left(e.toString());
    }
  }
}
