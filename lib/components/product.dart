import 'package:farmer_app/products/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list=[{
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
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
        itemBuilder: (BuildContext context,int index){
        return Single(
          product:product_list[index]['product'],
          variety:product_list[index]['variety'],
          type:product_list[index]['type'],
          weight:product_list[index]['weight'],
          farmer_name:product_list[index]['farmer_name'],
          city:product_list[index]['city'],
          state:product_list[index]['state'],
          phone:product_list[index]['phone'],

        );}
    );
  }
}
class Single extends StatelessWidget {
  final  product;
  final  variety;
  final  type;
  final  weight;
  final  city;
  final  state;
  final  farmer_name;
  final  phone;

  Single({
  this.product,
  this.city,
  this.farmer_name,
  this.phone,
  this.state,
  this.type,
  this.variety,
  this.weight,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
          tag: new Text('Hero1'),
          child: Material(
            child: InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(
                  pro_product:product,
                  pro_city:city,
                  pro_farmer_name:farmer_name,
                  pro_phone:phone,
                  pro_state:state,
                  pro_type:type,
                  pro_variety:variety,
                  pro_weight:weight,
              ))),
              child: Container(
                child: Card(

                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(
                        product,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(weight),
                    ),
                  ),
                  ),
              ),
              
                ),
              ),
            ),
          ),
        );
  }
}
