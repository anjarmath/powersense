import 'dart:convert';
import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:powersense/model/ai_model.dart';
import 'package:powersense/model/backend_payload.dart';
import 'package:powersense/model/response_model.dart';

import '../source/api_data_source.dart';

abstract class PredictionRepository {
  Future<Either<String, ResponseModel>> predict(BackendPayload payload);
  Future<Either<String, List<AiModel>>> getAllModels();
}

class PredictionRepositoryImpl extends PredictionRepository {
  final ApiDataSource _apiDataSource = ApiDataSource();

  @override
  Future<Either<String, List<AiModel>>> getAllModels() async {
    final res = await _apiDataSource.sendGet('models');

    return res.fold(
      (l) {
        return left(l);
      },
      (r) {
        if (r.statusCode != 200) {
          return left(r.statusCode.toString());
        } else {
          List<AiModel> listModels =
              List<AiModel>.from(jsonDecode(r.body).map((model) {
            print(model);
            try {
              return AiModel.fromJson(model);
            } catch (e) {
              log(e.toString());
            }
          }));

          return right(listModels);
        }
      },
    );
  }

  @override
  Future<Either<String, ResponseModel>> predict(BackendPayload payload) async {
    final body = jsonEncode(payload.toJson());
    final res = await _apiDataSource.sendPost('soh', body);

    ResponseModel respModel = ResponseModel(soh: 0);

    return res.fold<Either<String, ResponseModel>>(
      (l) {
        return left(l);
      },
      (r) {
        if (r.statusCode != 200) {
          return left(r.statusCode.toString());
        } else {
          final respBody = jsonDecode(r.body);
          respModel = ResponseModel.fromJson(respBody);
          return right(respModel);
        }
      },
    );
  }
}
