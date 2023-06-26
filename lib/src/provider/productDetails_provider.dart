import 'package:flutter/cupertino.dart';

class ProductDetailsProvider extends ChangeNotifier{
  int _selectedSizeIndex = 0;
  int _quantity = 0;
  List<String> sizes = ['180mg', '110mg'];


  int get quantity => _quantity;
  int get selectedSizeIndex => _selectedSizeIndex;
  String get selectedSize => sizes[selectedSizeIndex];


  void incrementQuantity() {
    _quantity++;
    notifyListeners();
  }

  void decrementQuantity() {
    if (_quantity > 0) {
      _quantity--;
      notifyListeners();
    }
  }

  void setSelectedSizeIndex(int index) {
    _selectedSizeIndex = index;
    notifyListeners();
  }
}