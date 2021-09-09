import 'package:flutter/material.dart';
import 'package:flutter_udemy_project_4/providers/cart.dart';
import 'package:provider/provider.dart';

class CardItem extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String title;

  CardItem(this.id, this.productId,this.price, this.quantity, this.title);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      onDismissed: (direction){
          Provider.of<Cart>(context,listen: false).removeItems(productId);
      },
      background: Container(
        color: Theme.of(context).errorColor,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40.0,
        ),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20.0),
      ),
      child: Card(
        margin: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 4.0,
        ),
        child: Padding(
          padding: EdgeInsets.all(8.00),
          child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(5.0),
              child: FittedBox(
                child: CircleAvatar(
                  radius: 30,
                  child: Text('\$ $price'),
                ),
              ),
            ),
            title: Text(title),
            subtitle: Text('Total: \$ ${(price * quantity)} '),
            trailing: Text("$quantity x"),
          ),
        ),
      ),
    );
  }
}
