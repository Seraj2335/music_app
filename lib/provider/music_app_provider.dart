import 'package:flutter/material.dart';

class MusicAppProvider extends ChangeNotifier {
  bool isFavs = false;
  int selectedCategoryIndex = 0;
  int currentIndex = 0;
  List<bool> selectedIndex = [false, false, false, false, false, false];

  bool get recentFavs => isFavs;

  void changeSelectedCategoryIndex(index) {
    selectedCategoryIndex = index;
    notifyListeners();
  }

  void changeSelectedIndex(int index) {
    if (selectedIndex[index] == true)
      selectedIndex[index] = false;
    else
      selectedIndex[index] = true;
    notifyListeners();
  }

  void changeState(int index) {
    currentIndex = index;
    if (index == 2) {
      isFavs = true;
    } else {
      isFavs = false;
    }
    notifyListeners();
  }
}
