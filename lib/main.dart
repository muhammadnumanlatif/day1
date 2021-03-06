import 'package:day1/core/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'pages/cart_page.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';

import '/utils/theme.dart';

void main() {
  runApp(
    VxState(
        store: MyStore(),
        child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// bringVegetables(rupees: 50);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/cart": (context) => CartPage(),
      },
    );
  }
}
