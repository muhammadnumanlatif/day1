import 'package:day1/models/cart_model.dart';
import 'package:day1/models/catalog_model.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore{
  CatalogModel? catalog ;
  CartModel? cart;

  MyStore(){
    catalog=CatalogModel();
    cart=CartModel();
    cart!.catalog=catalog;
  }


}