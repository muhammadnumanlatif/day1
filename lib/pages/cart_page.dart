import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.white,
      appBar: AppBar(
        backgroundColor: Vx.white,
        elevation: 0,
        toolbarHeight: 35,
        title: 'Cart'.text.teal600.make(),
      ),
      body: Center(
        child: 'Cart'.text.make(),
      ),
    );
  }
}
