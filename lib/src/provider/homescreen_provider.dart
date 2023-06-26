import 'package:flutter/widgets.dart';

class HomescreenProvider extends ChangeNotifier{
  int _currentPage = 0;
  String _dropdownvalue = 'Surat 394101';
  int get currentPage => _currentPage;
  List<String> get items => _items;
  String get selected => _dropdownvalue;
  List<String> _items = [
    'Surat 394101',
    'Surat 394107',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  List<String> images = [
    "assets/imges/sliderImage.png",
    "assets/imges/sliderImage.png",
    "assets/imges/sliderImage.png",
  ];
  setCurrentPage(int val) {
    _currentPage = val;
    notifyListeners();
  }
  setSelectedItem(String s) {
    _dropdownvalue = s;
    notifyListeners();
  }
}