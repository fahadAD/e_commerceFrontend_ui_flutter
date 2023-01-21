import 'package:flutter/material.dart';

import 'buildcard.dart';


Column buildGridview(String name,bool SeeMore) {
  return Column(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name,style: TextStyle(letterSpacing: 2,fontSize: 20,color: Colors.black87.withOpacity(0.9)),),
          ),
          SeeMore
          ?
          TextButton(onPressed: (){}, child: Text( "See More",style: TextStyle(color: Colors.red),)):Container(),
        ],
      ),


      GridView.builder(

        shrinkWrap: true,

        primary: false,

        itemCount: 6,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 2 ,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,

        ),

        itemBuilder: (BuildContext context, int index) {

          return buildCard();



        },),
    ],
  );
}