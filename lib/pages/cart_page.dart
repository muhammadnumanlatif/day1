import 'package:day1/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
   CartPage({Key? key}) : super(key: key);

   final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        toolbarHeight: 35,
        title: 'Cart Total'.text.xl3.teal600.make(),
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceAround,
        children: [
          '\$ ${_cart.totalPrice}'.text.xl5.color(
              Theme.of(context).primaryColor
          ).make(),
          ElevatedButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: 'Payment Services not Supported'.text.make()
                ),
              );
            },
            child: 'Pay'.text.make(),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                  StadiumBorder()
              ),
            ),
          ).wh(100, 50),
        ],
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(
             color: Theme.of(context).primaryColor,
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items!.isEmpty
        ? "Cart is Empty".text.xl3.color(
        Theme.of(context).primaryColor
    ).makeCentered()
        : ListView.builder(
      itemCount: _cart.items!.length,
      itemBuilder: (context,index){
        return ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            onPressed: (){
              _cart.remove(_cart.items![index]);
              setState(() {});
            },
            icon: Icon(Icons.remove_circle_outline),
          ),
          title: _cart.items![index].name!.text.make(),
        );
      },
    );
  }
}
