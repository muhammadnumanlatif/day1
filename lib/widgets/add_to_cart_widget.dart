import 'package:day1/core/store.dart';
import 'package:day1/models/cart_model.dart';
import 'package:day1/models/catalog_model.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class AddToCart extends StatelessWidget {

  AddToCart({
    Key? key, this.item,
  }) : super(key: key);

  final Item? item;

 // final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    final CartModel? _cart = (VxState.store as MyStore).cart;
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    bool isInCart = _cart!.items!.contains(item);
    return ElevatedButton(
      onPressed: (){
        if(!isInCart){
          AddMutation(item!);
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
