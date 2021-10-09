import 'package:day1/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 90;
    String name = "Muhammad Numan Latif";


    return Scaffold(
      appBar: AppBar(
        title: Text("Home App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to ${days} days of flutter by ${name}"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
