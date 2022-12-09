import 'package:untitled/models/category.dart';

class CartItem {
  Category? category;
  int units;

  CartItem({this.category, this.units = 0});
}
