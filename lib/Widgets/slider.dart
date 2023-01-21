import 'package:flutter/material.dart';



Widget build_Slider() {
  return SizedBox(
    height: 190,
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {

        return  Stack(
          children: [
            Padding(

              padding: const EdgeInsets.all(8.0),

              child:   Container(

                child: Image(
                  image: NetworkImage("https://previews.123rf.com/images/garagestock/garagestock1701/garagestock170138608/70143581-e-commerce-banner.jpg",),
                  height: 200,width :300,fit: BoxFit.fill,),
              ),

            ),
            Positioned(
                bottom:0,
                right:0,

                child: ElevatedButton(onPressed: (){}, child: Icon(Icons.add))),
          ],
        );

      },),
  );
}