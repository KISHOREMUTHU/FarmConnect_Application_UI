import 'package:flutter/material.dart';
import 'package:farmer_app/main.dart';
class ProductDetails extends StatefulWidget {
  final pro_product;
  final pro_variety;
  final pro_type;
  final pro_weight;
  final pro_city;
  final pro_state;
  final pro_farmer_name;
  final pro_phone;
  ProductDetails({
    this.pro_product,
    this.pro_city,
    this.pro_farmer_name,
    this.pro_phone,
    this.pro_state,
    this.pro_type,
    this.pro_variety,
    this.pro_weight,
});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      title: InkWell(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
          },
          child: Text('Farmer App')),
      backgroundColor: Colors.black,
      actions: <Widget>[
        IconButton(
          icon:Icon(Icons.search,),
          onPressed: (){},
        ),
        IconButton(
          icon:Icon(Icons.shopping_basket,),
          onPressed: (){},
        ),
      ],
    ),
      body: ListView(
        children: <Widget>[
          Container(
            height:300.0,
            color:Colors.white,
            child:Column(
              children:<Widget>[
                Row(
                  children:<Widget>[
                    Text('Product : '),
                Text (
                widget.pro_product
              ),],),
                SizedBox(height: 10.0,),
                Row(
                  children:<Widget>[
                    Text('Variety : '),

                    Text (
                        widget.pro_variety
                    ),],),
                SizedBox(height: 10.0,),

                Row(
                  children:<Widget>[
                    Text('Type : '),

                    Text (
                        widget.pro_type
                    ),],),
                SizedBox(height: 10.0,),

                Row(
                  children:<Widget>[
                    Text('Weight : '),

                    Text (
                        widget.pro_weight
                    ),],),
                SizedBox(height: 10.0,),

                Row(
                  children:<Widget>[
                    Text('City : '),

                    Text (
                        widget.pro_city
                    ),],),
                SizedBox(height: 10.0,),

                Row(
                  children:<Widget>[
                    Text('State : '),

                    Text (
                        widget.pro_state
                    ),],),
                SizedBox(height: 10.0,),

                Row(
                  children:<Widget>[
                    Text('Farmer Name : '),

                    Text (
                        widget.pro_farmer_name
                    ),],),
                SizedBox(height: 10.0,),

                Row(
                  children:<Widget>[
                    Text('Phone : '),

                    Text (
                        widget.pro_phone
                    ),],),
                SizedBox(height: 30.0,),

                Expanded(
                child:MaterialButton(
                  onPressed: (){
                    showDialog(context:context,
                    builder:(context){
                      return AlertDialog(
                        title:Text('Save for later'),
                        content:Text('Details are saved'),
                        actions: <Widget>[
                          MaterialButton(
                            child:Text('Done'),
                              onPressed:(){
                                Navigator.of(context).pop(context);

                          })],
                      );
                    });
                  },
                  color:Colors.redAccent,
                  elevation:0.2,
                  child:Row(
                    children:<Widget>[
                      Expanded(
                        child:Text('Save for later')
                      ),
                      Expanded(
                          child:Icon(Icons.star,),
                      ),
                    ]
                  )
                )
              ),
              ]
            )
          )
        ],
      )
    );
  }
}
