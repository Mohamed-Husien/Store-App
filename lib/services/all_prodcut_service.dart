import 'package:dio/dio.dart';
import 'package:store_app/models/produt_model.dart';

class AllProdcutService {
  final Dio dio;

  AllProdcutService({required this.dio});

  Future<ProductModel> getallProducts() async {
    Response response = await dio.get('https://fakestoreapi.com/products');
    ProductModel productModel = ProductModel.fromJson(response.data);
    return productModel;
  }
}
