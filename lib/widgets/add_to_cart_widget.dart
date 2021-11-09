import 'package:day1/models/cart_model.dart';
import 'package:day1/models/catalog_model.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class AddToCart extends StatefulWidget {

  AddToCart({
    Key? key, this.item,
  }) : super(key: key);

  final Item? item;

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items!.contains(widget.item);
    return ElevatedButton(
      onPressed: (){
        //    _cart.catalogModel=_catalog;

        if(!isInCart){
          isInCart = isInCart.toggle();
          final _catalog = CatalogModel();
          _cart.add(widget.item!);
         setState(() {});
       }
      },
      child : isInCart ? Icon(Icons.done): 'Add'.text.make(),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            StadiumBorder()
        ),
      ),
    );
  }
}
