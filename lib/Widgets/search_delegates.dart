import 'package:flutter/material.dart';

import '../searchpage.dart';
import '../theme.dart';

Widget build_search_Delegate(Size size, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: 60,
            width: size.width*0.6,
            decoration: BoxDecoration(

                color: All_colar.color2,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: TextFormField(
              onTap: (){
                showSearch(context: context, delegate: MysearchDelegate());
              },
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  hintText: "Search you any number..",
                  labelText: "Search",
                  icon: Icon(Icons.search,size: 30,color: Colors.white),
                  contentPadding: EdgeInsets.all(5),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none

              ),
            )),
      ),

      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle
            ),
            child: IconButton(onPressed: (){}
                , icon: Icon(Icons.chat,size: 35,color: Colors.white,)),
          ),
          Positioned(
            top: -5,
            right: 0,
            child: Container(
              height: 23,
              width: 23,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:All_colar.color1,

              ),
              child: Center(child: Text("2",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold))),
            ),
          )
        ],
      )

    ],);
}