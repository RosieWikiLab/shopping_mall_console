import 'package:console_shoppingmaill/product.dart';

class ShoppingMall {
  // 초기 데이터
  List<Product> stores = [
    Product(name: '셔츠', price: 45000, count: 1),
    Product(name: '원피스', price: 30000, count: 2),
    Product(name: '반팔티', price: 500000, count: 3),
    Product(name: '반바지', price: 400000, count: 4),
    Product(name: '양말', price: 300000, count: 0),
  ];

  int totalPrice = 0;
  
  // ShoppingMall({required this.stores, required this.totalPrice});

  void showProducts() {
    for(var product in stores) {
      print('${product.name} / ${product.price}원');
    }
  }

  bool checkProduct(String? name) {
    return stores.any((element) => element.name == name);
  }

  void addToCart(String? name, int? count) {
    totalPrice += stores.firstWhere((element) => element.name == name).price * count!;
  }

  int showTotal() {
    return totalPrice;
  }
}