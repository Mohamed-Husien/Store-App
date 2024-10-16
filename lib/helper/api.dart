// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

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
          'there is an error with status code ${response.statusCode} , with body ${response.data}');
    }
  }

  Future<Response> post({required String url, @required dynamic data}) async {
    Response response = await dio.post(
      url,
      data: data,
    );
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is an error with status code ${response.statusCode} , with body ${response.data}');
    }
  }

  Future<Response> put({required String url, @required dynamic data}) async {
    Response response = await dio.put(
      url,
      data: data,
    );
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is an error with status code ${response.statusCode} , with body ${response.data}');
    }
  }
}
