import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:powersense/model/payload_model.dart';
import 'package:powersense/model/response_model.dart';

part 'saved_model.freezed.dart';
part 'saved_model.g.dart';

@freezed
class SavedModel with _$SavedModel {
  factory SavedModel({
    required String name,
    required PayloadModel payload,
    required String soh,
    required String time,
  }) = _SavedModel;

  factory SavedModel.fromJson(Map<String, dynamic> json) =>
      _$SavedModelFromJson(json);
  factory SavedModel.emptyModel() {
    DateTime now = DateTime.now();
    return SavedModel(
      name: 'New Prediction',
      payload: PayloadModel.emptyModel(),
      soh: '0.0',
      time: DateFormat('yyyy-MM-dd').format(now),
    );
  }
}
