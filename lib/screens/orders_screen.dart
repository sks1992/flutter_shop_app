import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_4/providers/orders.dart';
import 'package:flutter_udemy_project_4/widgets/app_drawer.dart';
import 'package:flutter_udemy_project_4/widgets/order_item.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Your Order"),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, index) => OrderItems(orderData.orders[index]),
      ),
    );
  }
}
