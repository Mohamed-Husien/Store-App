import 'package:dio/dio.dart';

class AllCategorisSerivse {
  final Dio dio;

  AllCategorisSerivse(this.dio);

  Future<List<dynamic>> getAllCategorisMethod() async {
    Response response =
        await dio.get('https://fakestoreapi.com/products/categories');
    return response.data;
  }
}
