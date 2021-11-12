import 'package:day1/core/store.dart';
import 'package:day1/models/catalog_model.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {

  //catalog field
  final CatalogModel? _catalog = CatalogModel();

  // collections of ids from item
  final List<int>? _itemIds = [];

  //CatalogModel? get catalog => _catalog;

 // set catalog(CatalogModel? newCatalog){
  //  _catalog=newCatalog;
 // }

 //get items in the cart
List<Item>? get items => _itemIds!.map(
        (id) => _catalog!.getItemById(id)
).toList();


  //get total price
  double? get totalPrice => items!.fold(
      0, (total, current) => total!  + current.price!.toDouble(),
  );

}

class AddMutation extends VxMutation<MyStore>{
  final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store!.cart!._itemIds!.add(item.id!);
  }

}

class RemoveMutation extends VxMutation<MyStore>{
  final Item item;

  RemoveMutation(this.item);

  @override
  perform() {
    store!.cart!._itemIds!.remove(item.id!);
  }

}