import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:busbuddy/utils/colors.dart';
import 'package:busbuddy/utils/commonassets.dart';
import 'package:busbuddy/utils/commonstring.dart';
import 'package:busbuddy/utils/commonwidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: h,
          width: w,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(loginbg),fit: BoxFit.cover)
                  ),
                ),
              ),
              Positioned(
                  top: h*0.1,
                  left: w*0.1,
                  right: w*0.1,
                  bottom: h*0.1,
                  child:BlurryContainer(
                      height: h,
                      width: w,
                      blur: 5,
                      color: Color(0xff2C3E50).withOpacity(0.9),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: w*0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(applogo,height: h*0.2,),
                            customheight(h*0.01),
                            Container(
                              width: w*0.6,
                              child:   Text(login,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "inter",
                                  fontSize: 32,
                                  color: icontextcolor,
                                  height: 1,
                                ),
                                textAlign: TextAlign.center, // Center both text spans
                              ),
                            ),
                            customheight(h*0.05),
                            Loginfields(username),
                            customheight(h*0.05),
                            Loginfields(password),
                            customheight(50),
                            custombutton(context, login),
                            customheight(h*0.03),
                            Text(createacc,
                              style: TextStyle(
                                  color: icontextcolor,
                                  fontFamily: "inter",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      )
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
