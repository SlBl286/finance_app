import 'package:flutter/material.dart';
import 'package:flutter_app/app/controllers/home_controller.dart';
import 'package:flutter_app/bootstrap/helpers.dart';
import 'package:flutter_app/config/app_theme.dart';
import 'package:flutter_app/resources/widgets/safearea_widget.dart';
import 'package:line_icons/line_icons.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:nylo_framework/theme/helper/ny_theme.dart';

class MyHomePage extends NyStatefulWidget {
  final HomeController controller = HomeController();
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends NyState<MyHomePage> {
  bool _darkMode = false;

  @override
  widgetDidLoad() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColors.background,
      body: SafeAreaWidget(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Icon(
                      Icons.filter_list_rounded,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      color: lightColors.background,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: lightColors.background,
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              getImageAsset("avatar.png"),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 70, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Turtles",
                          style: TextStyle(
                              fontSize: 28,
                              color: lightColors.primaryContent,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Welcome Back !",
                          style: TextStyle(
                            fontSize: 14,
                            color: lightColors.primaryContent,
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      getImageAsset('filter_icon.png'),
                      width: 30,
                    ),
                  ],
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 2),
                              width:
                                  (MediaQuery.of(context).size.width - 70) / 2,
                              height: 170,
                              decoration: BoxDecoration(
                                  color: Color(0xFFA3E1DC),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person_outline,
                                    color: lightColors.primaryContent,
                                    size: 25,
                                  ),
                                  Text(
                                    "230K",
                                    style: TextStyle(
                                      color: lightColors.primaryContent,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Main",
                                    style: TextStyle(
                                      color: lightColors.primaryContent,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 2),
                              width:
                                  (MediaQuery.of(context).size.width - 70) / 2,
                              height: 220,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF6EAC2),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.calendar,
                                    color: lightColors.primaryContent,
                                    size: 25,
                                  ),
                                  Text(
                                    "1,423k",
                                    style: TextStyle(
                                      color: lightColors.primaryContent,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Daily Use",
                                    style: TextStyle(
                                      color: lightColors.primaryContent,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 2),
                              width:
                                  (MediaQuery.of(context).size.width - 70) / 2,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Color(0xFFe6d5ed),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.percentage,
                                    color: lightColors.primaryContent,
                                    size: 25,
                                  ),
                                  Text(
                                    "8.549K",
                                    style: TextStyle(
                                      color: lightColors.primaryContent,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Save",
                                    style: TextStyle(
                                      color: lightColors.primaryContent,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 2),
                              width:
                                  (MediaQuery.of(context).size.width - 70) / 2,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF5D2D3),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.inventory_2_outlined,
                                    color: lightColors.primaryContent,
                                    size: 25,
                                  ),
                                  Text(
                                    "9745 VND",
                                    style: TextStyle(
                                      color: lightColors.primaryContent,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Save",
                                    style: TextStyle(
                                      color: lightColors.primaryContent,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(color: lightColors.background),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(),
              child: Icon(
                Icons.home_outlined,
                color: lightColors.primaryContent,
              ),
            ),
            Icon(
              LineIcons.wallet,
              color: lightColors.primaryContent,
            ),
            Icon(
              LineIcons.barChartAlt,
              color: lightColors.primaryContent,
            ),
            Icon(
              Icons.person_outline_rounded,
              color: lightColors.primaryContent,
            ),
          ],
        ),
      ),
    );
  }
}
