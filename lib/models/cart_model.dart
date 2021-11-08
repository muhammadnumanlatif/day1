import 'package:day1/models/catalog_model.dart';

class CartModel {

  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel()=>cartModel;

  //catalog field
  CatalogModel? catalogModel = CatalogModel();

  // collections of ids from item
  final List<int>? _itemIds = [];

 //get items in the cart
List<Item>? get items => _itemIds!.map(
        (id) => catalogModel!.getItemById(id)
).toList();


  //get total price
  double? get totalPrice => items!.fold(
      0, (total, current) => total!  + current.price!.toDouble(),
  );

  //add item
  void add(Item item){
    _itemIds!.add(item.id!.toInt());
  }

  //remove items
  void remove(Item item){
    _itemIds!.remove(item.id!.toInt());
  }

}