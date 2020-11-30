import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Bottom_nav_screens/navy_pages/order_screen.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Myaccount_screens/setting_screen.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Myaccount_screens/wish_list_screen.dart';

import '../first_intro_screen.dart';

class MyaccountScreen extends StatefulWidget {
  @override
  _MyaccountScreenState createState() => _MyaccountScreenState();
}

class _MyaccountScreenState extends State<MyaccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: comm_appbar('My Account', context),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
             Stack(
               children: [
                 Container(
                   width: MediaQuery.of(context).size.width,
                   height: 130,
                   color: HexColor('#BD9E2F'),
                 ),
                Padding(
                  padding: const EdgeInsets.only( top: 70),
                  child:  Center(
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.orangeAccent,
                        maxRadius: 50,
                         // child: Image.asset('assets/unnamed.jpg' , fit: BoxFit.cover,),
                        ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all( color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    )
                  ),
                )
               ],
             ),

              SizedBox(
                height: 15,
              ),

              Center(
                child:  Text(
                  'Raslan Abdullah',
                  style:  TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: ArabicFonts.Cairo,
                      package: 'google_fonts_arabic',
                      color: HexColor('#BD9E2F')
                  ),),
              ),
              Center(
                child:  Text(
                  'info@myscarf.com-sa',
                  style:  TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: ArabicFonts.Cairo,
                      package: 'google_fonts_arabic',
                      color: HexColor('#333333')
                  ),),
              ),

              SizedBox(
                height: 10,
              ),

              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),

           Padding(
             padding: EdgeInsets.only( left: 115),
             child:  component_myaccount(),
           )




            ],
          ),
        ),
      ),
    );
  }


  component_myaccount(){
    return  Column(
        children: [
          InkWell(
            child:  Row(
              children: [
                Image.asset("assets/icon-user.png" , color: HexColor('#BD9E2F'),),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'My account',
                  style: TextStyle(
                      fontFamily: ArabicFonts.Cairo,
                      fontWeight: FontWeight.w600,
                      package: 'google_fonts_arabic',
                      color: HexColor('#333333'),
                      fontSize: 16
                  ),
                )
              ],
            ),
            onTap: (){},
          ),
          SizedBox( height: 10,),
         InkWell(
           child:  Row(
             children: [
               Icon(Icons.favorite_border , color: HexColor('#BD9E2F'), size: 18),
               SizedBox(
                 width: 5,
               ),
               Text(
                 'Wishlist',
                 style: TextStyle(
                     fontFamily: ArabicFonts.Cairo,
                     fontWeight: FontWeight.w600,
                     package: 'google_fonts_arabic',
                     color: HexColor('#333333'),
                     fontSize: 16
                 ),
               )
             ],
           ),
           onTap: (){
             Navigator.push(context, MaterialPageRoute(
               builder: (context)=> WishlistScreen()
             ));
           },
         ),
          SizedBox( height: 10,),
          InkWell(
            child: Row(
              children: [
                Image.asset("assets/icon-bag.png" , color: HexColor('#BD9E2F'),),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'My orders',
                  style: TextStyle(
                      fontFamily: ArabicFonts.Cairo,
                      package: 'google_fonts_arabic',
                      fontWeight: FontWeight.w600,
                      color: HexColor('#333333'),
                      fontSize: 16
                  ),
                )
              ],
            ),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                  builder: ( context)=> OrderScreen()
              ));
            },
          ),
          SizedBox( height: 10,),
         InkWell(
           child:  Row(
             children: [
               Image.asset('assets/icon-rewards.png', color: HexColor('#BD9E2F')),
               SizedBox(
                 width: 5,
               ),
               Text(
                 'Rewards',
                 style: TextStyle(
                     fontFamily: ArabicFonts.Cairo,
                     fontWeight: FontWeight.w600,
                     color: HexColor('#333333'),
                     package: 'google_fonts_arabic',
                     fontSize: 16
                 ),
               )
             ],
           ),
           onTap: (){},
         ),
          SizedBox( height: 10,),
         InkWell(
           child:  Row(
             children: [
               Image.asset('assets/icon-cog.png', color: HexColor('#BD9E2F')),
               SizedBox(
                 width: 5,
               ),
               Text(
                 'Setting',
                 style: TextStyle(
                     fontFamily: ArabicFonts.Cairo,
                     fontWeight: FontWeight.w600,
                     color: HexColor('#333333'),
                     package: 'google_fonts_arabic',
                     fontSize: 16
                 ),
               )
             ],
           ),
           onTap: (){
             Navigator.push(context, MaterialPageRoute(
               builder: (context)=> SettingScreen()
             ));
           },
         ),
          SizedBox( height: 30,),
          InkWell(
            child: Row(
              children: [
                Image.asset("assets/icon-logout.png" , color: HexColor('#BD9E2F'),),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Log Out',
                  style: TextStyle(
                      fontFamily: ArabicFonts.Cairo,
                      fontWeight: FontWeight.w600,
                      color: HexColor('#333333'),
                      package: 'google_fonts_arabic',
                      fontSize: 16
                  ),
                )
              ],
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: ( context)=> FirstIntroScreen()
              ));
            },
          )

        ],

    );
  }
}
