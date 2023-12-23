import "package:flutter/material.dart";


class MainScreenNotifier extends ChangeNotifier{
  int _pageIndex = 0;
  int get getIndex => _pageIndex;
  set setIndex (int index) {
    _pageIndex = index;
    notifyListeners();
  }
}
