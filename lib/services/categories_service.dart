import 'package:dio/dio.dart';
import 'package:store_app/models/produt_model.dart';

class CategoriesService {
  final Dio dio;

  CategoriesService(this.dio);

  Future<ProductModel> getCategoriesProduct(
      {required String categoryName}) async {
    Response response = await dio
        .get('https://fakestoreapi.com/products/category/$categoryName');
    ProductModel productModel = ProductModel.fromJson(response.data);
    return productModel;
  }
}
