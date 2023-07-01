import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:fpdart/fpdart.dart';
import 'package:powersense/model/payload_model.dart';
import 'package:powersense/model/response_model.dart';

import '../source/api_data_source.dart';

abstract class PredictionRepository {
  Future<Either<String, ResponseModel>> predict(PayloadModel payload);
}

class PredictionRepositoryImpl extends PredictionRepository {
  final ApiDataSource _apiDataSource = ApiDataSource();
  @override
  Future<Either<String, ResponseModel>> predict(PayloadModel payload) async {
    final body = jsonEncode(payload.toJson());
    final res = await _apiDataSource.sendPost('soh', body);
    ResponseModel respModel = ResponseModel(soh: 0);
    res.fold(
      (l) {
        return left(l);
      },
      (r) {
        final respBody = jsonDecode(r.body);
        respModel = ResponseModel.fromJson(respBody);
      },
    );

    return right(respModel);
  }
}
