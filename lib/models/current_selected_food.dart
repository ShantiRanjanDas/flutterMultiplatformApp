import 'package:flutter/material.dart';

import 'foods.dart';

class CurrentSelectedFood with ChangeNotifier {
  Food selectedFood;

  CurrentSelectedFood(this.selectedFood);

  void selectFood(Food food) {
    selectedFood = food;
    notifyListeners();
  }
}
