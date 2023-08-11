import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:powersense/model/backend_payload.dart';
import 'package:powersense/model/saved_model.dart';

final modelStateNotifierProvider =
    StateNotifierProvider<ModelStateNotifier, SavedModel>(
        (ref) => ModelStateNotifier());

class ModelStateNotifier extends StateNotifier<SavedModel> {
  ModelStateNotifier() : super(SavedModel.emptyModel());

  void updateName(String name) {
    state = state.copyWith(
      name: name,
    );
  }

  void updatePayload(BackendPayload payload) {
    state = state.copyWith(
      payload: payload,
    );
  }

  void updateModelName(String modelName) {
    state = state.copyWith(
      modelName: modelName,
    );
  }

  void updateSOH(String soh) {
    state = state.copyWith(
      soh: soh,
    );
  }

  void updateTime() {
    DateTime now = DateTime.now();
    state = state.copyWith(
      time: DateFormat('dd-MM-yyyy HH:mm:ss').format(now),
    );
  }
}
