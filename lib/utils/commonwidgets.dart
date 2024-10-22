import 'package:flutter/material.dart';

import 'colors.dart';

Widget customheight(double h){
  return SizedBox(
    height: h,
  );
}

Widget customwidth(double w){
  return SizedBox(
    width: w,
  );
}

Widget drawerelement(elementicon,elementtext){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Row(
      children: [
        Icon(elementicon,color: Colors.white,size: 30,),
        customwidth(20),
        Text(elementtext,style: TextStyle(color:icontextcolor,fontSize: 20,fontFamily: "inter"),),
      ],
    ),
  );
}