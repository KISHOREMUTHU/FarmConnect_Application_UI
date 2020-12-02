import 'package:farmer_app/components/note_detail.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:farmer_app/components/horizontal_list.dart';
import 'package:farmer_app/components/product.dart';
import 'package:farmer_app/products/basket.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ),
  );
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Icon cusIcon =Icon(Icons.search);
  Widget cusSearchBar=Text("Farmer app");
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height : 200.0,
      child : new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/img1.jpg"),
          AssetImage("assets/img2.jpg"),
          AssetImage("assets/img3.jpg"),
          AssetImage("assets/img4.jpg"),
          AssetImage("assets/img5.jpg"),
        ],
        autoplay: true,
        dotSize:4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 2000),
      ),
    );
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://mfiles.alphacoders.com/815/815679.jpg"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: cusSearchBar,
          backgroundColor: Colors.blueGrey,
          actions: <Widget>[
            IconButton(
              icon:Icon(Icons.search),
              onPressed: (){
                setState(() {
                  if(this.cusIcon.icon==Icons.search)
                  {
                    this.cusIcon=Icon(Icons.cancel);
                  this.cusSearchBar=TextField(
                    textInputAction:TextInputAction.go,
                    decoration: InputDecoration(
                      border:InputBorder.none,
                      hintText: "Search",
                    ),
                    style: TextStyle(
                      color:Colors.white,
                      fontSize:16.0,
                    ),
                  );
                  }
                  else
                    {
                      this.cusIcon=Icon(Icons.search);
                     this.cusSearchBar=Text("Farm Connect");
                  }
                });
              },
            ),
            IconButton(
              icon:Icon(Icons.shopping_basket,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Basket()));
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children:<Widget> [
              new UserAccountsDrawerHeader(
                accountName: Text('Andrew'),
                accountEmail: Text('Andrew1234@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                decoration:BoxDecoration(
                  color: Colors.blueGrey,

                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home),

                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Categories'),
                  leading: Icon(Icons.dashboard),

                ),
              ),
              InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>new Basket()));
               },
                child: ListTile(
                title: Text('My Basket'),
                  leading: Icon(Icons.shopping_basket),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Favorites'),
                  leading: Icon(Icons.favorite),

                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person),

                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),

                ),
              ),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About Us'),
                  leading: Icon(Icons.help),

                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Rate us'),
                  leading: Icon(Icons.star),

                ),
              ),
            ],
          ),
        ),
        body: new ListView(
            children : <Widget>[
              image_carousel,
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Categories'),
              ),
              HorizontalList(),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Recent Products'),
              ),
              Container(

                height: 300.0,
                child: Product(),
              ),
            ]
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add,),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>new NoteDetail()));
          },
        ),
      ),
    );
  }
}