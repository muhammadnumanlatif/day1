import 'package:day1/models/cart_model.dart';
import 'package:day1/models/catalog_model.dart';
import 'package:day1/utils/theme.dart';
import 'package:day1/widgets/add_to_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  HomeDetailPage({Key? key, this.item}) : super(key: key);
  final Item? item;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          elevation: 0,
          toolbarHeight: 35,
          title: item!.name!.text.xl3.color(
              Theme.of(context).primaryColor
          ).bold.make(),
        ),
        bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            '\$ ${item!.price}'.text.xl3.bold.color(
                Theme.of(context).primaryColor
            ).make(),
            AddToCart(item: item).wh(100, 50),
          ],
        ),
        body: Column(
          children: [
            Hero(
                tag: Key('${item!.id}'),
                child: Image.network(
                    '${item!.image}',
               fit: BoxFit.cover,
                  
                )
            ).h32(context),
            Expanded(
              child: VxArc(
                  height: 30,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                  ),
                  child: Column(
                    children: [
                      45.heightBox,

                      item!.desc!.text.xl.color(
                          Theme.of(context).primaryColor
                      ).make(),
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatisobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquamnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,tenetur error, harum nesciunt ipsum debitis quas aliquid."
                          .text.color(
                          Theme.of(context).primaryColor
                      ).make().p16(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
