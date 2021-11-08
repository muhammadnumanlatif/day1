import 'package:flutter/material.dart';

class Item {
  final int? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? image;

  Item({this.id, this.name, this.desc, this.price, this.image});

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'desc': this.desc,
      'price': this.price,
      'image': this.image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      image: map['image'] as String,
    );
  }
}

class CatalogModel {

  static final catModel = CatalogModel._internal();

  CatalogModel._internal();

  factory CatalogModel()=>catModel;


  static List<Item>? items;

 Item getItemById(int id){
   return items!.firstWhere((item) => item.id == id);
  }

 static Item getItemByPosition(int index){
    return items![index];
  }

}

