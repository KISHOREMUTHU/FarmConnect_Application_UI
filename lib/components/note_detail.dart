import 'package:flutter/material.dart';
 class NoteDetail extends StatefulWidget {
   @override
   _NoteDetailState createState() => _NoteDetailState();
 }

 class _NoteDetailState extends State<NoteDetail> {
   static var _properties=['Vegetable','Fruit','Grains','Others'];
   TextEditingController productController=TextEditingController();
   TextEditingController phoneController=TextEditingController();
   TextEditingController varietyController=TextEditingController();
   TextEditingController weightController=TextEditingController();
   TextEditingController cityController=TextEditingController();
   TextEditingController stateController=TextEditingController();
   TextEditingController farmer_nameController=TextEditingController();
   @override
   Widget build(BuildContext context) {
     TextStyle textStyle=Theme.of(context).textTheme.title;
     return Scaffold(
       appBar:AppBar(
         title: Text("Add Product"),
       ) ,
       body: Padding(
         padding: EdgeInsets.only(top: 15.0,left: 10.0,right: 10.0,),
         child: ListView(
           children: <Widget>[
             ListTile(
               title: DropdownButton(
                 items:_properties.map((String dropDownStringItem) {
                   return DropdownMenuItem<String>(
                     value: dropDownStringItem,
                     child: Text(dropDownStringItem),
                   );
                 }).toList(),
                 style: textStyle,
                 value: 'Vegetable',
                 onChanged: (value){
                   setState(() {
                     debugPrint('$value');
                   });
                 },
               ),
             ),
             Padding(
                 padding:EdgeInsets.only(top: 15.0,bottom: 15.0),
                     child:TextField(
                       controller: productController,
                       style: textStyle,
                       onChanged: (value){
                         debugPrint('something');

                       },
                       decoration: InputDecoration(
                         labelText:'Product',
                         labelStyle: textStyle,
                         border: OutlineInputBorder(
                             borderRadius:BorderRadius.circular(5.0))
                       ),
                     ),
             ),
             Padding(
               padding:EdgeInsets.only(top: 15.0,bottom: 15.0),
               child:TextField(
                 controller: varietyController,
                 style: textStyle,
                 onChanged: (value){
                   debugPrint('something');

                 },
                 decoration: InputDecoration(
                     labelText:'Variety',
                     labelStyle: textStyle,
                     border: OutlineInputBorder(
                         borderRadius:BorderRadius.circular(5.0))
                 ),
               ),
             ),
             Padding(
               padding:EdgeInsets.only(top: 15.0,bottom: 15.0),
               child:TextField(
                 controller: weightController,
                 style: textStyle,
                 onChanged: (value){
                   debugPrint('something');

                 },
                 decoration: InputDecoration(
                     labelText:'Weight',
                     labelStyle: textStyle,
                     border: OutlineInputBorder(
                         borderRadius:BorderRadius.circular(5.0))
                 ),
               ),
             ),
             Padding(
               padding:EdgeInsets.only(top: 15.0,bottom: 15.0),
               child:TextField(
                 controller: cityController,
                 style: textStyle,
                 onChanged: (value){
                   debugPrint('something');

                 },
                 decoration: InputDecoration(
                     labelText:'City',
                     labelStyle: textStyle,
                     border: OutlineInputBorder(
                         borderRadius:BorderRadius.circular(5.0))
                 ),
               ),
             ),
             Padding(
               padding:EdgeInsets.only(top: 15.0,bottom: 15.0),
               child:TextField(
                 controller: stateController,
                 style: textStyle,
                 onChanged: (value){
                   debugPrint('something');

                 },
                 decoration: InputDecoration(
                     labelText:'State',
                     labelStyle: textStyle,
                     border: OutlineInputBorder(
                         borderRadius:BorderRadius.circular(5.0))
                 ),
               ),
             ),
             Padding(
               padding:EdgeInsets.only(top: 15.0,bottom: 15.0),
               child:TextField(
                 controller: farmer_nameController,
                 style: textStyle,
                 onChanged: (value){
                   debugPrint('something');

                 },
                 decoration: InputDecoration(
                     labelText:'Farmer Name',
                     labelStyle: textStyle,
                     border: OutlineInputBorder(
                         borderRadius:BorderRadius.circular(5.0))
                 ),
               ),
             ),
             Padding(
               padding:EdgeInsets.only(top: 15.0,bottom: 15.0),
               child:TextField(
                 controller: phoneController,
                 style: textStyle,
                 onChanged: (value){
                   debugPrint('something');

                 },
                 decoration: InputDecoration(
                     labelText:'Phone',
                     labelStyle: textStyle,
                     border: OutlineInputBorder(
                         borderRadius:BorderRadius.circular(5.0))
                 ),
               ),
             ),
          Padding(
            padding: EdgeInsets.only(top:15.0,bottom: 15.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: Theme.of(context).primaryColorLight,
                    textColor:Theme.of(context).primaryColorDark,
                    child: Text('Add'),
                    onPressed: (){
                      setState(() {
                        debugPrint('Add');
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    color: Theme.of(context).primaryColorLight,
                    textColor:Theme.of(context).primaryColorDark,
                    child: Text('Cancel'),
                    onPressed: (){
                      setState(() {
                        debugPrint('Cancel');
                      });
                    },
                  ),
                ),
              ],
            ),
              )
           ],
         ),
       ),
     );
   }
 }
