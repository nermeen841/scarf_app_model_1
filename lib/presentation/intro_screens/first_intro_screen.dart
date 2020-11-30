import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/next_skip_page.dart';

class FirstIntroScreen extends StatefulWidget {
  @override
  _FirstIntroScreenState createState() => _FirstIntroScreenState();
}

class _FirstIntroScreenState extends State<FirstIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#BD9E2F'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: HexColor('#BD9E2F'),
        padding: const EdgeInsets.only(  left: 60, right: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/Component 103.png", fit: BoxFit.cover),
              SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  InkWell(
                    child:  Container(
                      padding: EdgeInsets.only( left: 20),
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: HexColor("#666666"),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15)
                        ),
                      ),
                      child: Text("English" , style: TextStyle(
                          fontFamily: ArabicFonts.Cairo,
                          fontSize: 30,
                          color: Colors.white,
                          package: 'google_fonts_arabic',
                        ),),
                      ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute( builder: (context)=>IntroNextScreen()));
                    },
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 130),
                    child: InkWell(
                      child: Container(
                        width: 120,
                        height: 50,
                        padding: EdgeInsets.only( left: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                          child: Text("عربي" , style: TextStyle(
                          fontFamily: ArabicFonts.Cairo,
                          fontSize: 30,
                          color: Colors.black,
                          package: 'google_fonts_arabic',
                        ),
                           // textAlign: TextAlign.center,
                          ),
                        ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute( builder: (context)=>IntroNextScreen()));
                      },
                    ),
                  )
                ],
              )

            ],
          )
        ),
      ),
    );
  }
}
