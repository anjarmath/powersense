import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:powersense/model/saved_model.dart';
import 'package:powersense/view_model/repository/save_repository.dart';

final savedHistoryProvider =
    FutureProvider.autoDispose<List<SavedModel>>((ref) async {
  return await SaveRepositoryImpl().loadAllSavedHistory();
});
