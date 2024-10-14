import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:store_app/helper/api.dart';

class AllCategorisSerivse {
  final Dio dio;

  AllCategorisSerivse(this.dio);

  Future<List<dynamic>> getAllCategorisMethod() async {
    try {
      Response response = await API(dio)
          .get(url: 'https://fakestoreapi.com/products/categories');
      return response.data;
    } on DioException catch (e) {
      final String errorMessage =
          "there is an error with status cod ${e.message.toString()}";

      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("oops there is an error , please try later");
    }
  }
}
