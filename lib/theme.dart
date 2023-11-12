import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class theme{
  List imgList = [
    Image.asset('assest/Images/Ellipse 1.jpg'),
    Image.asset('assest/Images/Ellipse 2.png'),
    //Image.asset('Images/S2.png'),
  ];
   theme() {
     for (int i = 0; i < imgList.length; i++)
       Container(
         margin: EdgeInsets.symmetric(vertical: 0),
         child: Align(
             widthFactor: 0.5,
             child: CircleAvatar(
               radius: 50,
               backgroundColor: Colors.white,
               child: CircleAvatar(
                 radius: 40,
                 backgroundImage: NetworkImage(
                   imgList[i],
                 ),
               ),
             )),
       );



  }
}