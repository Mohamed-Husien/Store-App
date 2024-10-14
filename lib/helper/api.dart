// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class API {
  final Dio dio;
  API(
    this.dio,
  );

  Future<Response> get({required String url}) async {
    Response response = await dio.get(url);
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is an error with status code ${response.statusCode}');
    }
  }
}
