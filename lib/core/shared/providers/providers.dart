import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

class IndexProvider extends ChangeNotifier {
  int index;
  IndexProvider({
    this.index = 0,
  });
  void changeIndex(int newValue) {
    index = newValue;
    notifyListeners();
  }
}
