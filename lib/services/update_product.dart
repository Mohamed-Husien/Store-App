import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/produt_model.dart';

class UpdateProduct {
  final Dio dio;

  UpdateProduct(this.dio);

  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    try {
      Response response =
          await API(dio).put(url: 'https://fakestoreapi.com/products', data: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      });

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
