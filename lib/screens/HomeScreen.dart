import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:busbuddy/utils/colors.dart';
import 'package:busbuddy/utils/commonassets.dart';
import 'package:busbuddy/utils/commonstring.dart';
import 'package:busbuddy/utils/commonwidgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
  {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    List<String> carousal = [image1,image2];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: navcolor,
        leading: Image(image: AssetImage(applogo)),
        title: Center(
          child: Text(
            appname,
            style: TextStyle(
              color: icontextcolor,
              fontFamily: "raleway",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.75,
        backgroundColor: const Color(0xff2C3E50),
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: h*0.10), // To remove padding from the ListView
          children: [
            drawerelement(Icons.add_circle_outline, addbus),
            const Divider(color: Colors.white, thickness: 1),
            drawerelement(Icons.route_outlined, addroute),
            const Divider(color: Colors.white, thickness: 1),
            drawerelement(Icons.schedule_outlined, addschedule),
            const Divider(color: Colors.white, thickness: 1),
            drawerelement(Icons.book_online_outlined, viewres),
            const Divider(color: Colors.white, thickness: 1),
            drawerelement(Icons.login_outlined, admin),
          ],
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
            items: carousal.map((item) {
              return Image(
                image: AssetImage("$item"),
                fit: BoxFit.cover,
              );
            }).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              height: MediaQuery.of(context).size.height * 0.3, // Adjust the height as needed
              autoPlay: true,
            ),
          ),
            customheight(h*0.025),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w*0.02),
              child: Column(
                children: [
                  const Text("Explore Key Features",
                    style: TextStyle(
                        fontFamily: "inter",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  customheight(h*0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      featurecard(context, Icons.add_circle_outline, "Add Bus"),
                      featurecard(context, Icons.book_online_outlined, "View Reservations"),
                      featurecard(context, Icons.route_outlined, "Add Route"),

                    ],
                  ),
                ],
              ),
            ),

    ],
        )
      ),
    );
  }
}
