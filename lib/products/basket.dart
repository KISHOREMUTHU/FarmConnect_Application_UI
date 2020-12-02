import 'package:flutter/material.dart';
import 'package:farmer_app/main.dart';
import 'package:farmer_app/components/basket_products.dart';
class Basket extends StatefulWidget {
  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return Container
    (
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Basket'),
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              icon:Icon(Icons.search,),
              onPressed: (){},
            ),
          ],
        ),
        body: new BasketProducts(),
        bottomNavigationBar: new Container(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: ListTile(
                    title: Text('Here you can update your Basket by adding Product details'),
                  ))
            ],
          ),
        ),
      ),
    );

  }
}
