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
      case '2':
        // 필수2 - 상품을 장바구니에 담는 메서드
        addToCart(mall);   
    }
  } while (number != '5');
}

void addToCart(ShoppingMall mall) {
  print('상품의 이름을 입력해주세요!');
  var name = stdin.readLineSync();
  if(!mall.checkProduct(name)) {
    print('입력값이 올바르지 않아요 !');
    return;
  }

  print('상품의 개수를 입력해주세요!');
  var count = int.tryParse(stdin.readLineSync() ?? '');
  if(count == null) {
    print('입력값이 올바르지 않아요 !');
    return;
  } else if(count <= 0) {
    print('0개보다 많은 개수의 상품만 담을 수 있어요 !');
    return;
  }

  mall.addToCart(name, count);
  print('장바구니에 담습니다.');
}
