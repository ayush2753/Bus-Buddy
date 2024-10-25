import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:busbuddy/utils/commonstring.dart';
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

Widget featurecard(context,cardicon,cardtext){
  return Card(
    child: BlurryContainer(
        height: MediaQuery.of(context).size.height*0.1,
        blur: 3,
        child: Column(
          children: [
            Icon(cardicon,size: 28,),
            Text(cardtext,
              style: TextStyle(
                  fontFamily: "inter",
                  fontSize: 14,
                  fontWeight: FontWeight.bold),)
          ],
        )),
  );
}
Widget Loginfields(fieldtext){
  return TextField(
    decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(borderSide: BorderSide(color:icontextcolor)),
        hintText: fieldtext,
        hintStyle: TextStyle(
            color: icontextcolor,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "inter"
        )
    ),
    style: TextStyle(color: icontextcolor),
  );
}

Widget custombutton(context,buttontext){
  return Container(
    width: MediaQuery.of(context).size.width*0.5,
    height: MediaQuery.of(context).size.height*0.06,
    decoration: BoxDecoration(
        color: Color(0xff3498DB),
        borderRadius: BorderRadius.circular(33)
    ),
    child: Center(
      child: Text(buttontext,
          style: TextStyle(
              color: icontextcolor ,
              fontFamily: "inter",
              fontWeight: FontWeight.bold,
              fontSize: 20)
      ),
    ),

  );
}