class ProductModel {
  final int id;
  final double price;
  final String title;
  final String description;
  final String image;
  final RatingModel rate;
  ProductModel({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.rate,
  });
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        price: jsonData['price'],
        title: jsonData['title'],
        description: jsonData['description'],
        image: jsonData['image'],
        rate: RatingModel.fromJson(
          jsonData['rating'],
        ));
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
