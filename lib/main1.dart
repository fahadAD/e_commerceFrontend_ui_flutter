import 'dart:ui';

import 'package:classflutter9/main2.dart';
import 'package:classflutter9/searchpage.dart';
import 'package:classflutter9/theme.dart';
import 'package:flutter/material.dart';

import 'Widgets/Gridview.dart';
import 'Widgets/buildcard.dart';
import 'Widgets/search_delegates.dart';
import 'Widgets/slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {





  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(

 appBar: AppBar(
   leading: Icon(Icons.perm_identity,color: Colors.black87,),
backgroundColor: Colors.white,
   elevation: 0.0,
   title: Text("eMart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40)),

        actions: [ Row(

     children: [

        TextButton(onPressed: (){}, child: Text("Edit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: IconButton(
           icon: const Icon(Icons.add,size: 30,color: Colors.black,),
           tooltip: 'Open shopping cart',
           onPressed: () {
             // handle the press
           },
         ),
       ),

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: IconButton(
          icon: const Icon(Icons.settings_applications,size: 30,color: Colors.black,),
          tooltip: 'Open shopping cart',
          onPressed: () {
            // handle the press
          },
           ),
       ),
     ],
   ),],
 ),


body: SingleChildScrollView(
  child:   Column(
  
    children: [
  
  
  
      build_search_Delegate(size, context),
  
      build_Slider(),
  


       buildGridview("Treanding",true),
      buildGridview("Treanding",false),
  
  
  
  
  
    ],
  
  ),
),


    );
  }





}

