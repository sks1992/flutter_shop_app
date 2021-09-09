import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_4/screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shop',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProductsOverviewScreen(),
    );
  }
}
