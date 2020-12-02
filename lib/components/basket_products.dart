import 'package:flutter/material.dart';
import 'package:farmer_app/main.dart';
class BasketProducts extends StatefulWidget {
  @override
  _BasketProductsState createState() => _BasketProductsState();
}

class _BasketProductsState extends State<BasketProducts> {
  var Products_on_basket=[
    {
      "product":"Tomato",
      "variety":"country",
      "type":"Vegetable",
      "weight":"20kg",
      "city":"trichy",
      "state":"TN",
      "farmer_name":"shiva",
      "phone":"1234567890",
    },
    {
      "product":"Tomato",
      "variety":"country",
      "type":"Vegetable",
      "weight":"20kg",
      "city":"trichy",
      "state":"TN",
      "farmer_name":"shiva",
      "phone":"1234567890",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     itemCount: Products_on_basket.length,
      itemBuilder: (context,index){
       return SingleBasketProduct(
         basket_product: Products_on_basket[index]["product"],
         basket_variety: Products_on_basket[index]["variety"],
         basket_type: Products_on_basket[index]["type"],
         basket_weight: Products_on_basket[index]["weight"],
         basket_city: Products_on_basket[index]["city"],
         basket_state: Products_on_basket[index]["state"],
         basket_farmer_name: Products_on_basket[index]["farmer_name"],
         basket_phone: Products_on_basket[index]["phone"],
       );
      },
    );}
}
class SingleBasketProduct extends StatelessWidget {
  final  basket_product;
  final  basket_variety;
  final  basket_type;
  final  basket_weight;
  final  basket_city;
  final  basket_state;
  final  basket_farmer_name;
  final  basket_phone;

  SingleBasketProduct({
    this.basket_product,
    this.basket_variety,
    this.basket_type,
    this.basket_weight,
    this.basket_city,
    this.basket_state,
    this.basket_farmer_name,
    this.basket_phone,

  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(basket_product),
            subtitle: Column(
                children: <Widget>[
                  Row(
                    children:<Widget>[
                  Text('Variety: '),
                  Text(basket_variety),],),
                  SizedBox(height: 10.0,),

                  Row(
                    children:<Widget>[
                      Text('Type: '),
                      Text(basket_type),],),
                  SizedBox(height: 10.0,),

                  Row(
                    children:<Widget>[
                      Text('Weight: '),
                      Text(basket_weight),],),
                  SizedBox(height: 10.0,),

                  Row(
                    children:<Widget>[
                      Text('City: '),
                      Text(basket_city),],),
                  SizedBox(height: 10.0,),

                  Row(
                    children:<Widget>[
                      Text('State: '),
                      Text(basket_state),],),
                  SizedBox(height: 10.0,),

                  Row(
                    children:<Widget>[
                      Text('Farmer Name: '),
                      Text(basket_farmer_name),],),
                  SizedBox(height: 10.0,),

                  Row(
                    children:<Widget>[
                      Text('Phone: '),
                      Text(basket_phone),],),
                  SizedBox(height: 30.0,),

                ]),
      ),
    );
  }

}



