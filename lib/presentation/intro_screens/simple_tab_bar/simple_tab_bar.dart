import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class SimpleTabBar extends StatefulWidget {
  @override
  _SimpleTabBarState createState() => _SimpleTabBarState();
}

class _SimpleTabBarState extends State<SimpleTabBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    "العبايات",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      fontFamily: ArabicFonts.Cairo,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Tab(
                  child: Text(
                    "الطرح",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: ArabicFonts.Cairo,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Tab(
                  child:Text(
                    "الاقمشه",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: ArabicFonts.Cairo,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
          ),

          );

  }
}
