import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/produt_model.dart';

class CategoriesService {
  final Dio dio;

  CategoriesService(this.dio);

  Future<List<ProductModel>> getCategoriesProduct(
      {required String categoryName}) async {
    try {
      Response response = await API(dio)
          .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
      List<dynamic> data = jsonDecode(response.data);
      List<ProductModel> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(ProductModel.fromJson(data[i]));
      }
      return productList;
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
