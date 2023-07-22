import 'package:fpdart/fpdart.dart';

import 'package:http/http.dart' as http;

import '../../core/external/env.dart';

class ApiDataSource {
  final String? _baseUrl;

  ApiDataSource() : _baseUrl = EnvironmentConfig.backendBaseUrl;

  Future<Either<String, http.Response>> sendPost(
      String path, String body) async {
    final url = Uri.parse('$_baseUrl/$path');

    try {
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: body,
      );

      return right(response);
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, http.Response>> sendGet(String path) async {
    try {
      final url = Uri.parse('$_baseUrl/$path');

      final response = await http.get(url, headers: {
        'Content-Type': 'application/json',
      });

      return right(response);
    } catch (e) {
      return left(e.toString());
    }
  }
}
