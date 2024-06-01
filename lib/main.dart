import 'package:bv_snacks/navigator.dart';
import 'package:bv_snacks/single_item_page.dart';
import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BV Snacks',
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => NavigatorPage(),
        "SingleItemPage": (context) => SPage(),
      },
    );
  }
}

