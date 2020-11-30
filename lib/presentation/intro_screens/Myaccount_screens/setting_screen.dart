import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: comm_appbar('Settings', context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 82,
              color: HexColor('#BD9E2F'),
            ),
            SizedBox(
              height: 5,
            ),

            Image.asset("assets/Component 103.png", width: 110,),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
            ),


            Padding(
              padding: const EdgeInsets.only( left: 120 , top: 30 ),
              child: setting_list(),
            )


          ],
        ),

      ),
    );
  }


  setting_list(){
    return  Column(
      children: [
        InkWell(
          child: Row(
            children: [
              Image.asset( 'assets/icon-cog.png' , color: HexColor('#BD9E2F') ),
              SizedBox(
                width: 5,
              ),
              Text('General' ,  style: TextStyle(
                  fontFamily: ArabicFonts.Cairo,
                  fontWeight: FontWeight.w600,
                  color: HexColor('#666666'),
                  fontSize: 16
              ),)
            ],
          ),

          onTap: (){},
        ),
        SizedBox(
          height: 12,
        ),
        InkWell(
          child: Row(
            children: [
              Image.asset( 'assets/icon-shield.png' , color: HexColor('#BD9E2F')),
              SizedBox(
                width: 5,
              ),
              Text('Privacy & Security' ,  style: TextStyle(
                  fontFamily: ArabicFonts.Cairo,
                  fontWeight: FontWeight.w600,
                  color: HexColor('#666666'),
                  fontSize: 16
              ),)
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        InkWell(
          child: Row(
            children: [
              Image.asset( 'assets/icon-payment.png' , color: HexColor('#BD9E2F')  , width: 20,),
              SizedBox(
                width: 5,
              ),
              Text('Payment' ,  style: TextStyle(
                  fontFamily: ArabicFonts.Cairo,
                  fontWeight: FontWeight.w600,
                  color: HexColor('#666666'),
                  fontSize: 16
              ),)
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          child: Row(
            children: [
              Image.asset( 'assets/icon-bell.png' , color: HexColor('#BD9E2F')),
              SizedBox(
                width: 15,
              ),
              Text('Notification' ,  style: TextStyle(
                  fontFamily: ArabicFonts.Cairo,
                  fontWeight: FontWeight.w600,
                  color: HexColor('#666666'),
                  fontSize: 16
              ),)
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        InkWell(
          child: Row(
            children: [
              Image.asset('assets/icon-logout.png' , color: HexColor('#BD9E2F')),
              SizedBox(
                width: 5,
              ),
              Text('Log out' ,  style: TextStyle(
                  fontFamily: ArabicFonts.Cairo,
                  fontWeight: FontWeight.w600,
                  color: HexColor('#BD9E2F'),
                  fontSize: 16
              ),)
            ],
          ),

          onTap: (){
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
