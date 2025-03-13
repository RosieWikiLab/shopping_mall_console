import 'dart:io';
import 'package:console_shoppingmaill/shopping_mall.dart';

void main() {
  String? number;
  var mall = ShoppingMall();

  do {
    print('-----------------------------------------------------------------------------------');
    print('[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료');
    print('-----------------------------------------------------------------------------------');
  
    number = stdin.readLineSync();

    switch(number) {
      case '1':
        // 필수1 - 상품 목록을 출력하는 메서드
        mall.showProducts();
    }
  } while (number != '5');
}