import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_4/widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shop"),
      ),
      body: ProductsGrid(),
    );
  }
}

/** 1. GridView.builder =>
    Creates a scrollable, 2D array of widgets that are created on demand.
    This constructor is appropriate for grid views with a large (or infinite)
    number of children because the builder is called only for those children
    that are actually visible.*/
