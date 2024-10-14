import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/produt_model.dart';

class AllProdcutService {
  final Dio dio;

  AllProdcutService({required this.dio});

  Future<ProductModel> getallProducts() async {
    try {
      Response response =
          await API(dio).get(url: 'https://fakestoreapi.com/products');

      ProductModel productModel = ProductModel.fromJson(response.data);
      return productModel;
    } on DioException catch (e) {
      final String errorMessage = "there is an error :${e.message.toString()}";

      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("oops there is an error , please try later");
    }
  }
}
