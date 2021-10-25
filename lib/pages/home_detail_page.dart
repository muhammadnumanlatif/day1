import 'package:day1/models/catalog_model.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  HomeDetailPage({Key? key, this.item}) : super(key: key);
  final Item? item;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Vx.white,
        appBar: AppBar(
          backgroundColor: Vx.white,
          elevation: 0,
          toolbarHeight: 35,
        ),
        bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            '\$ ${item!.price}'.text.xl3.bold.teal600.make(),
            ElevatedButton(
              onPressed: (){},
              child: 'Buy'.text.make(),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                    StadiumBorder()
                ),
              ),
            ).wh(100, 50),
          ],
        ).pOnly(right: 12,left: 12, top: 12, bottom: 12),
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
                    color: Colors.teal.shade100,
                  ),
                  child: Column(
                    children: [
                      45.heightBox,
                      item!.name!.text.xl3.teal600.bold.make(),
                      item!.desc!.text.xl.teal600.make(),
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