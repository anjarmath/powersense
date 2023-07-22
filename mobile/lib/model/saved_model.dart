import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:powersense/model/backend_payload.dart';
import 'package:powersense/model/payload_model.dart';
import 'package:uuid/uuid.dart';

part 'saved_model.freezed.dart';
part 'saved_model.g.dart';

@freezed
class SavedModel with _$SavedModel {
  factory SavedModel({
    required String id,
    required String name,
    required BackendPayload payload,
    required String modelName,
    required String soh,
    required String time,
    required bool isSaved,
  }) = _SavedModel;

  factory SavedModel.fromJson(Map<String, dynamic> json) =>
      _$SavedModelFromJson(json);
  factory SavedModel.emptyModel() {
    DateTime now = DateTime.now();
    Uuid uuid = const Uuid();
    return SavedModel(
      id: uuid.v4(),
      name: 'New Prediction',
      payload: BackendPayload(
        payload: PayloadModel.emptyModel(),
        model: 'svr',
      ),
      modelName: "Support Vector Regressor",
      soh: '0.0',
      time: DateFormat('yyyy-MM-dd').format(now),
      isSaved: false,
    );
  }
}
