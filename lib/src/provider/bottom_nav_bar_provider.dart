import 'package:flutter/cupertino.dart';

class BottomNavBarProvider extends ChangeNotifier{
  int? _index = 0;
  int? get index => _index;

  changeIndex(int value){
    _index = value;
    notifyListeners();
  }
}