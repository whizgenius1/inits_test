import 'package:flutter/cupertino.dart';

class ExampleProvider extends ChangeNotifier {
  int _navIndex = 0;
  int get navIndex => _navIndex;

  setNavIndex(int navIndex) {
    _navIndex = navIndex;
    notifyListeners();
  }
}
