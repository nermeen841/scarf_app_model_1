
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Log_screens/signe_in_page.dart';

import '../../bottom_nav_test.dart';


class IntroNextScreen extends StatelessWidget {
  //making list of pages needed to pass in IntroViewsFlutter constructor.
  final pages = [
    PageViewModel(
        pageColor: Colors.white,
        iconColor: HexColor('#BD9E2F') ,
        bubbleBackgroundColor: HexColor('#BD9E2F'),
        body: Text(''),
        title: Text(""),
        bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.black54),
        mainImage: Image.asset(
          'assets/travel.PNG',
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: Colors.white,
      bubbleBackgroundColor: HexColor('#BD9E2F'),
      iconColor: HexColor('#BD9E2F'),
      body: Text(''),
      title: Text(""),
      mainImage: Image.asset(
        'assets/time_arrival.PNG',
        alignment: Alignment.center,
      ),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.black54),
    ),
    PageViewModel(
      pageColor: Colors.white,
      iconColor: HexColor('#BD9E2F'),
      bubbleBackgroundColor: HexColor('#BD9E2F'),
      body: Text(""),
      title: Text(""),
      mainImage: Image.asset(
        'assets/secure.PNG',
        alignment: Alignment.center,
      ),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.black54),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          showNextButton: true,
          showSkipButton: true,
          onTapDoneButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TestBotomNav(),
              ), //MaterialPageRoute
            );
          },
          onTapSkipButton: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TestBotomNav(),
              ), //MaterialPageRoute
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.black54,
            fontSize: 18.0,
          ),
          pageButtonsColor: HexColor("#666666"),
          background: HexColor("#666666"),
        ), //IntroViewsFlutter
      ), //Builder
      theme: ThemeData(
        buttonColor: HexColor("#666666"),
      ),
    ); //Material App
  }
}





