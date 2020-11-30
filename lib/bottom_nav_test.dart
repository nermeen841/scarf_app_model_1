import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Bottom_nav_screens/navy_pages/favourite_screen.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Bottom_nav_screens/navy_pages/home_scren.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Bottom_nav_screens/navy_pages/order_screen.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Bottom_nav_screens/navy_pages/search_screen.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/drawer_screens/categories.dart';
import 'package:bmnav/bmnav.dart';

import 'core/color.dart';
import 'domain/category/slider/slider_data_api.dart';
class TestBotomNav extends StatefulWidget {
  @override
  _TestBotomNavState createState() => _TestBotomNavState();
}

class _TestBotomNavState extends State<TestBotomNav> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    OrderScreen(),
    CategoriesPage(),
    SearchScren(),
    FavouriteScreen()
  ];
  Widget currentScreen = HomeScreen();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
     // backgroundColor: Colors.transparent,
        drawer: Container(
          width: 216,
          child: drawer_data(context),
          decoration: BoxDecoration(
            border: Border.all(color: HexColor('#000000')),
            boxShadow: [ BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
            ],
          ),
        ),
        body: PageStorage(child: currentScreen, bucket: bucket),
         bottomNavigationBar: Stack(
          children: [
            Image.asset('assets/nav bar.png'),
            BottomNav(
              color: Colors.transparent,
              elevation: 0.0,
              index: currentTab,
              labelStyle: LabelStyle(visible: false),
              onTap: (i) {
                setState(() {
                  currentTab = i;
                  currentScreen = screens[i];
                });
              },
              items: [
                BottomNavItem(Icons.home, label: ''),
                BottomNavItem(Icons.fitness_center, label: ''),
                BottomNavItem(Icons.person, label: ''),
                BottomNavItem(Icons.view_headline, label: ''),
                BottomNavItem(Icons.view_headline, label: '')
              ],
              iconStyle: IconStyle(color: Colors.transparent,
                  onSelectColor: Colors.transparent,
                  size: 15,
                  onSelectSize: 15),

            ),

          ],
        )
    );
  }
}