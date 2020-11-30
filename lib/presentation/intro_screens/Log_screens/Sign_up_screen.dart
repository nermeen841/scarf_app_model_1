import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Log_screens/signe_in_page.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Log_screens/verification_code_screen.dart';
import 'package:scarf_app_model_1/state_store/auth_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passwordvisible;
  bool checkBoxValue = false;
  TextEditingController _username = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _phone = new TextEditingController();


  @override
  void initState() {
    super.initState();
    passwordvisible = true;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                              .height,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sign Up", style: TextStyle(
                                    color: HexColor("#0E153D"),
                                    fontSize: 20,
                                    fontFamily: ArabicFonts.Cairo
                                ),),

                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: _username,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            hintText: "Your name",
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
                                          controller: _phone,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText: "Mobile",
                                            hintStyle: TextStyle(
                                                color: HexColor("#C7C7CC")
                                            ),
                                            prefixIcon: Image.asset(
                                                'assets/design/Group 1398.png'),
                                          ),
                                        ),
                                      ),

                                      Container(
                                        margin: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: _email,
                                          keyboardType: TextInputType
                                              .emailAddress,
                                          decoration: InputDecoration(
                                            hintText: "Your Email",
                                            hintStyle: TextStyle(
                                                color: HexColor("#C7C7CC")
                                            ),
                                            prefixIcon: Image.asset(
                                                'assets/design/Group 1397.png'),
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
                                                icon: Icon(
                                                  passwordvisible ? Icons
                                                      .visibility_off : Icons
                                                      .visibility,
                                                  color: HexColor('#C7C7CC'),),
                                                onPressed: () {
                                                  setState(() {
                                                    passwordvisible =
                                                    !passwordvisible;
                                                  });
                                                },
                                              )
                                          ),
                                        ),
                                      ),


                                      SizedBox(
                                        height: 5,
                                      ),

                                      Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            Row(
                                              children: [
                                                Checkbox(
                                                    value: checkBoxValue,
                                                    activeColor: HexColor(
                                                        "#BD9E2F"),
                                                    onChanged: (bool newValue) {
                                                      setState(() {
                                                        checkBoxValue =
                                                            newValue;
                                                      });
                                                    }),
                                                Expanded(
                                                    child: Text(
                                                      'By creating your account you agree to the Kenakata',
                                                      style: TextStyle(
                                                          color: HexColor(
                                                              '#0E153D'),
                                                          fontWeight: FontWeight
                                                              .w600,
                                                          fontSize: 14,
                                                          fontFamily: ArabicFonts
                                                              .Cairo
                                                      ),
                                                    )),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40),
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    child: Text(
                                                      'Terms of Service',
                                                      style: TextStyle(
                                                        color: HexColor(
                                                            "#BD9E2F"),
                                                        fontWeight: FontWeight
                                                            .w600,
                                                        fontSize: 14,
                                                        fontFamily: ArabicFonts
                                                            .Cairo,
                                                      ),
                                                      textAlign: TextAlign
                                                          .center,
                                                    ),

                                                    onTap: () {
                                                      ///TODO: GO TO TERMS OF SERVICES SCREEN

                                                    },
                                                  ),
                                                  SizedBox(width: 5,),
                                                  Text('and', style: TextStyle(
                                                    color: HexColor('#0E153D'),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    fontFamily: ArabicFonts
                                                        .Cairo,
                                                  ),),
                                                  SizedBox(width: 5,),
                                                  InkWell(
                                                    child: Text(
                                                      'Privacy Policy',
                                                      style: TextStyle(
                                                        color: HexColor(
                                                            "#BD9E2F"),
                                                        fontWeight: FontWeight
                                                            .w600,
                                                        fontSize: 14,
                                                        fontFamily: ArabicFonts
                                                            .Cairo,
                                                      ),),
                                                    onTap: () {
                                                      ///TODO: GO TO PRIVACY POLICY SCREEN
                                                    },
                                                  )
                                                ],
                                              ),
                                            )
                                          ]),

                                      SizedBox(
                                        height: 15,
                                      ),


                                      InkWell(
                                        child: Container(
                                          padding: EdgeInsets.only(top: 15),
                                          width: 343,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                15),
                                            color: HexColor("#BD9E2F"),
                                          ),
                                          child: Text(
                                            'Sign Up', style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: ArabicFonts.Cairo
                                          ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        onTap: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context) =>
                                                  VerificationCodeScreen()
                                          ));
                                        },
                                      ),


                                      SizedBox(
                                        height: 60,
                                      ),

                                      Center(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceEvenly,
                                          children: [
                                            Text("Already have an account ?",
                                              style: TextStyle(
                                                  color: HexColor('#0E153D'),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  fontFamily: ArabicFonts.Cairo
                                              ),),

                                            InkWell(
                                              child: Text(
                                                "Sign In", style: TextStyle(
                                                  color: HexColor("#BD9E2F"),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  fontFamily: ArabicFonts.Cairo
                                              ),),

                                              onTap: () {
                                                Navigator.push(
                                                    context, MaterialPageRoute(
                                                    builder: (context) =>
                                                        SigneInScreen()
                                                ));
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Center(
                                        child: Image.asset(
                                            'assets/Component 109.png',
                                            color: HexColor("#BD9E2F")),
                                      )
                                    ],
                                  ),

                                ),
                              ])


                      )
                    ]
                )
            )
        )
    );
  }


  vaildate() {
    if (_username.text.isEmpty) {
      return "please enter your name";
    } else if (_email.text.isEmpty) {
      return "please enter email";
    } else if (_password.text.isEmpty) {
      return "This field is required";
    } else if (_phone.text.isEmpty) {
      return "please enter phone number";
    }
    else {
      RM.get<AuthStor>().setState(
              (s) =>
              s.register(
                  _username.text, _password.text, _email.text, _phone.text),
          onData: (context, userData) =>
             Navigator.pushAndRemoveUntil(context,
                 MaterialPageRoute(builder: (context) {
             return VerificationCodeScreen();
             },),  (route) => false));


    }
  }

}