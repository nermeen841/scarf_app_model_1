import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
//import 'package:pinput/pin_put/pin_put.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Log_screens/Sign_up_screen.dart';

class VerificationCodeScreen extends StatefulWidget {
  @override
  _VerificationCodeScreenState createState() => _VerificationCodeScreenState();

}

 class _VerificationCodeScreenState extends State<VerificationCodeScreen> {

 /*
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: HexColor('#BD9E2F')),
      borderRadius: BorderRadius.circular(15),
    );
  }

  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('SMS Verification' , style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          color: Colors.black
        ),),
        automaticallyImplyLeading: false,
        leading: InkWell(
          child: Image.asset('assets/btn-back.png' , color: HexColor('#BD9E2F'),),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),

      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only( left: 10 , right: 10 , top: 15),
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/phone-icon.png"),
              SizedBox(
                height: 20,
              ),
              Text('Enter the code below' , style: TextStyle(
                  color: HexColor('#BD9E2F'),
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
                textAlign: TextAlign.center,
              ),

              Text('to verify phone number' , style: TextStyle(
                  color: HexColor('#BD9E2F'),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: ArabicFonts.Cairo
              ),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                'A 6 digit verification code has been sent to... 5629',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: ArabicFonts.Cairo,
                    fontWeight: FontWeight.w600
                ),
              ),

              SizedBox(
                height: 60,
              ),

            /*  Center(
                child: PinPut(
                  autovalidateMode: false,
                  keyboardType: TextInputType.number,
                  fieldsCount: 6,
                  focusNode: _pinPutFocusNode,
                  controller: _pinPutController,
                  submittedFieldDecoration: _pinPutDecoration,
                  selectedFieldDecoration: _pinPutDecoration,
                  followingFieldDecoration:_pinPutDecoration,
                ),
              ),

             */
              InkWell(
                child: Container(
                  padding: EdgeInsets.only( top: 15),
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HexColor("#BD9E2F"),
                  ),
                  child: Text('Verify' , style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),

                onTap: (){
                  ///TODO: GOTO HOME PAGE
                  ///TODO: SHOW ALERT MESSAGE
                },
              ),

              SizedBox(
                height: 10,
              ),

              FlatButton(
                child: Text('Cancel' , style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: HexColor('#8E8E93'),
                ),
                ),

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: ( context)=> SignUpScreen()
                  ));
                },
              )
            ],
          ),
        ),
      ),

    );
  }
}

