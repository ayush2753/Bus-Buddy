import 'package:busbuddy/utils/colors.dart';
import 'package:busbuddy/utils/commonassets.dart';
import 'package:busbuddy/utils/commonstring.dart';
import 'package:busbuddy/utils/commonwidgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
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
        backgroundColor: Color(0xff2C3E50),
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: h*0.10), // To remove padding from the ListView
          children: [
            drawerelement(Icons.add_circle_outline, addbus),
            Divider(color: Colors.white, thickness: 1),
            drawerelement(Icons.route_outlined, addroute),
            Divider(color: Colors.white, thickness: 1),
            drawerelement(Icons.schedule_outlined, addschedule),
            Divider(color: Colors.white, thickness: 1),
            drawerelement(Icons.book_online_outlined, viewres),
            Divider(color: Colors.white, thickness: 1),
            drawerelement(Icons.login_outlined, admin),
          ],
        ),
      ),
      body: Center(
        child: Text("Welcome to BusBuddy!"),
      ),
    );
  }
}
