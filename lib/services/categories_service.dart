import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/produt_model.dart';

class CategoriesService {
  final Dio dio;

  CategoriesService(this.dio);

  Future<ProductModel> getCategoriesProduct(
      {required String categoryName}) async {
    try {
      Response response = await API(dio)
          .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
      ProductModel productModel = ProductModel.fromJson(response.data);
      return productModel;
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
