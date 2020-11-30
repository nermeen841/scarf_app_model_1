
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Bottom_nav_screens/navy_pages/order_screen.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/drawer_screens/categories.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/drawer_screens/my_account.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/first_intro_screen.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

Widget drawer_data( BuildContext context ){

  return  Drawer(
   child: ListView(
    padding: EdgeInsets.only( left: 15, bottom: 30 ),
    children: <Widget>[
     DrawerHeader(
       child: Padding(
         padding: EdgeInsets.only(top: 100),
         child:  Text('The List' , style: TextStyle(
             color: HexColor('#BD9E2F'),
             fontFamily: ArabicFonts.Cairo,
             fontWeight: FontWeight.bold,
             fontSize: 20
         ),
           textAlign: TextAlign.start,
         ),
       ),
       decoration: BoxDecoration(
        color: Colors.white,
        ),

       ),
     ListTile(
      title: drawer_item('assets/home.png', 'Home'),
       onTap: () {
        Navigator.pop(context);
       },
      ),
    ListTile(
     title: drawer_item('assets/icon-user.png', 'My account'),
      onTap: () {
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(
        builder: ( context)=> MyaccountScreen()
      ));
     },
     ),

      ListTile(
        title: drawer_item('assets/icon-bag.png', 'My Orders'),
        onTap: () {
          Navigator.pop(context);
        },
      ),

      ListTile(
        title: drawer_item('assets/icon-edit.png', 'About'),
        onTap: () {
          Navigator.pop(context);
        },
      ),

      ListTile(
        title: Row(
            children: [
              Image.asset( 'assets/icon-cog.png' , color: HexColor('#BD9E2F'),),

              SizedBox(
                width: 10,
              ),
              Text( 'Change language' ,
                style: TextStyle(
                    color: HexColor('#333333'),
                    fontFamily: ArabicFonts.Cairo,
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                ),
              ),
            ]),
        onTap: () {
          Navigator.pop(context);
        },
      ),

      ListTile(
        title: Row(
            children: [
              Icon( Icons.phone_android, color: HexColor('#BD9E2F') , size: 18,),

              SizedBox(
                width: 10,
              ),
              Text( 'Contact' ,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: ArabicFonts.Cairo,
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                ),
              ),
            ]),
        onTap: () {
          Navigator.pop(context);
        },
      ),

      ListTile(
        title: drawer_item('assets/icon-layer.png', 'Categories'),
        onTap: () {
          Navigator.pop(context);
          Navigator.push( context , MaterialPageRoute(
            builder: (context)=> Categories()
          ));
        },
      ),

      ListTile(
        title: drawer_item('assets/icon-shield.png', 'Privacy & security'),
        onTap: () {
          Navigator.pop(context);
        },
      ),

      ListTile(
        title: Row(
          children: [
          Icon( Icons.location_on, color: HexColor('#BD9E2F') , size: 18,),

         SizedBox(
          width: 10,
        ),
         Text( 'Location' ,
          style: TextStyle(
              color: Colors.black,
              fontFamily: ArabicFonts.Cairo,
              fontWeight: FontWeight.w400,
              fontSize: 16
          ),
        ),
          ]),

        onTap: () {
          Navigator.pop(context);
        },
      ),

      ListTile(
        title: drawer_item('assets/icon-logout.png', 'Log out'),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context,
          MaterialPageRoute(
            builder: ( context)=> FirstIntroScreen()
          )
          );
        },
      ),

      SizedBox(
        height: 50,
      ),

       Center(
          child: Image.asset('assets/Component 109.png' , color: HexColor("#BD9E2F")),
        ),


    ],
    ),

  );
}

drawer_item( String path , String txt){

  return Row(
    children: [
      Image.asset( path  , color: HexColor('#BD9E2F') , ),

      SizedBox(
        width: 10,
      ),
      Text( txt ,
        style: TextStyle(
          color: HexColor('#333333'),
          fontFamily: ArabicFonts.Cairo,
          fontWeight: FontWeight.w400,
          fontSize: 16
        ),
      ),
    ],
  );
}

