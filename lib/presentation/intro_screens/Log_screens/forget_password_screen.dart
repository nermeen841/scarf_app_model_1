import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Reset Password' , style: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: ArabicFonts.Cairo,
          fontSize: 20 ,
          color: HexColor('#0E153D')
        ),),
        automaticallyImplyLeading: false,
        leading: InkWell(
          child: Image.asset('assets/btn-back.png' , color: HexColor('#BD9E2F'),),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child:  Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 10, left: 10 , right: 10),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/lock-help.png"),
                SizedBox(
                  height: 20,
                ),

                Text("Forgot Password ?" , style: TextStyle(
                    color: HexColor('#BD9E2F'),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  fontFamily: ArabicFonts.Cairo
                ),),

                SizedBox(
                  height: 20,
                ),

                Text("Please enter the email address" , style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  fontFamily: ArabicFonts.Cairo
                ),),

                Text("registered on your account" , style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  fontFamily: ArabicFonts.Cairo
                ),),

                SizedBox(
                  height: 20,
                ),

                Container(
                    padding: EdgeInsets.only( top: 15 , left: 10 , bottom: 5 ),
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: HexColor("#E5E5EA"),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: 'Your Email',
                          border: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          enabledBorder: InputBorder.none

                      ),
                    )
                ),

                SizedBox(
                  height: 20,
                ),

                InkWell(
                  child: Container(
                    padding: EdgeInsets.only( top: 15),
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: HexColor("#BD9E2F"),
                    ),
                    child: Text('Reset Password' , style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  onTap: (){
                    ///TODO: GOTO HOME PAGE
                    ///TODO: SEND DATA TO API
                  },
                ),

              ],
            ),
          ),
        ),
      )



    );
  }
}
