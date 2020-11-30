import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/bottom_nav_test.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Log_screens/Sign_up_screen.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Log_screens/verification_code_screen.dart';
import 'package:scarf_app_model_1/state_store/auth_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'forget_password_screen.dart';

class SigneInScreen extends StatefulWidget {
  @override
  _SigneInScreenState createState() => _SigneInScreenState();
}

class _SigneInScreenState extends State<SigneInScreen> {

  bool passwordvisible;
  bool checkBoxValue = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();


  @override
  void initState() {
    super.initState();
    passwordvisible = true;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      body: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 280,
                  child: Image.asset(
                    'assets/gradient-overlay.png', fit: BoxFit.cover,),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 10),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign In", style: TextStyle(
                          color: HexColor("#0E153D"),
                          fontSize: 20
                      ),),

                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.only(right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(8.0),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                controller: _username,
                                decoration: InputDecoration(
                                  hintText: "Enter Email / username",
                                  hintStyle: TextStyle(
                                      color: HexColor("#C7C7CC")
                                  ),
                                  prefixIcon: Image.asset(
                                      'assets/design/Group 1399.png'),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: _password,
                                keyboardType: TextInputType.text,
                                obscureText: passwordvisible,
                                decoration: InputDecoration(
                                    hintText: "password",
                                    hintStyle: TextStyle(
                                        color: HexColor("#C7C7CC")
                                    ),
                                    prefixIcon: Image.asset(
                                        'assets/design/Group 1396.png'),
                                    suffixIcon: IconButton(
                                      icon: Icon(passwordvisible
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                          color: HexColor("#C7C7CC")),
                                      onPressed: () {
                                        setState(() {
                                          passwordvisible = !passwordvisible;
                                        });
                                      },
                                    )
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 40,
                            ),

                            InkWell(
                              child: Container(
                                padding: EdgeInsets.only(top: 15),
                                width: 343,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: HexColor("#BD9E2F"),
                                ),
                                child: Text('Sign In', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                ),
                                  textAlign: TextAlign.center,
                                ),
                              ),

                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => TestBotomNav()));
                              },
                            ),

                            SizedBox(
                              height: 5,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                        value: checkBoxValue,
                                        activeColor: HexColor("#BD9E2F"),
                                        onChanged: (bool newValue) {
                                          setState(() {
                                            checkBoxValue = newValue;
                                          });
                                        }),
                                    Text('Remember me', style: TextStyle(
                                        color: HexColor('#0E153D'),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        fontFamily: ArabicFonts.Cairo
                                    ),)
                                  ],
                                ),
                                InkWell(
                                  child: Text(
                                    "Forget Password ?", style: TextStyle(
                                      color: HexColor('#0E153D'),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontFamily: ArabicFonts.Cairo
                                  ),),

                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>
                                            ForgetPasswordScreen()
                                    ));
                                  },
                                ),

                              ],
                            ),

                            SizedBox(
                              height: 50,
                            ),

                            Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: [
                                  Text(
                                    "Don't have an account ?", style: TextStyle(
                                      color: HexColor('#0E153D'),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontFamily: ArabicFonts.Cairo
                                  ),),

                                  InkWell(
                                    child: Text("Sign up", style: TextStyle(
                                        color: HexColor("#BD9E2F"),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        fontFamily: ArabicFonts.Cairo
                                    ),),
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context) =>
                                              SignUpScreen()));
                                    },),

                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Image.asset('assets/Component 109.png',
                                  color: HexColor("#BD9E2F")),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          )
      ),

    );
  }

  /* _signip_btn() {
    return WhenRebuilderOr<AuthStor>(
      observe: () => RM.get<AuthStor>(),
      builder: (context, model) => InkWell(
        child: Text("Sign up" , style: TextStyle(
            color: HexColor("#BD9E2F"),
            fontWeight: FontWeight.w600,
            fontSize: 14,
            fontFamily: ArabicFonts.Cairo
        ),),
        onTap: (){
         // validation();
        },),
      onWaiting: () => Loading(),
    );
  }*/

  validation() {
    if (_username.text.isEmpty) {
      return "this field is important";
    } else if (_password.text.isEmpty) {
      return "this field is required";
    }
    else {
      RM.get<AuthStor>().setState(
              (s) => s.login(_password.text, _username.text),
          onData: (context, userData) {
            if (userData.userData.data.isActive == 1) {
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) {
                    return VerificationCodeScreen();
                  }), (route) => false);
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return TestBotomNav();
                  }));
            }
          });
    }
  }

}