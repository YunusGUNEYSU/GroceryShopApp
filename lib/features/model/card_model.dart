import 'package:flutter/material.dart';

class CardModel extends ChangeNotifier {
  
  final List _shopItems=[
     ["Avocado", "4.00", "assets/avocado.png", Colors.green],
    ["Banana", "2.50", "assets/banana.png", Colors.yellow],
    ["Chicken", "12.80", "assets/chicken.png", Colors.brown],
    ["Water", "1.00", "assets/water.png", Colors.blue],
  ];
  final List _cardItems=[];
  get shopItem=>_shopItems;
  get cardItems=>_cardItems;

  void addItemToCard(int index){
    _cardItems.add(_shopItems[index]);
    notifyListeners();
  }
  void removeItemFromCard(int index){
    _cardItems.removeAt(index);
    notifyListeners();
  }
String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cardItems.length; i++) {
      totalPrice += double.parse(cardItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}