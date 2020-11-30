import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}


enum SingingCharacter { SaudiArabia}

class _CheckoutScreenState extends State<CheckoutScreen> {

  SingingCharacter _character = SingingCharacter.SaudiArabia;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _commen_app_bar(),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shipping to ..', style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: ArabicFonts.Cairo,
                    // package: 'google_fonts_arabic',
                    color: HexColor('#BD9E2F')
                ),),
                InkWell(
                  child: Icon(
                      Icons.keyboard_arrow_down, color: HexColor('#BD9E2F')),
                  onTap: () {},
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Radio(
                      toggleable: true,
                      activeColor: HexColor('#BD9E2F'),
                      value: SingingCharacter.SaudiArabia,
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    Text('Saudi Arabia', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: ArabicFonts.Cairo,
                        // package: 'google_fonts_arabic',
                        color: Colors.black
                    ),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      InkWell(
                        child: Image.asset(
                          'assets/icon-edit.png', color: HexColor('#E0B936'),),
                        onTap: () {},
                      ),
                      // InkWell(
                      //   child: Image.asset('assets/icon-edit.png' , color: HexColor('#E0B936'),),
                      //    onTap: (){},
                      //  ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _column_text('Eastern Region'),
                  SizedBox(height: 5,),
                  _column_text('Dammam , Abdullah Fouad'),
                  SizedBox(height: 5,),
                  _column_text('Phone : 055555555'),

                ],
              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(
              minWidth: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 50,
              color: HexColor('#D0D2D3'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add, color: HexColor('#333333'), size: 30,),
                  SizedBox(width: 5,),
                  Text('Add New Address',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 17
                    ),
                  )
                ],
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 30,
            ),
            Text('Select payment method ..', style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.w400,
                fontFamily: ArabicFonts.Cairo,
                // package: 'google_fonts_arabic',
                color: HexColor('#BD9E2F')
            ),),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Image.asset('assets/visa.JPG'),
                      onTap: () {},
                    ),
                    InkWell(
                      child: Image.asset('assets/stc.JPG'),
                      onTap: () {},
                    )

                  ],
                ),
                Center(
                    child: InkWell(
                      child: Image.asset('assets/mada.JPG'),
                      onTap: () {},
                    )
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              minWidth: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 50,
              color: HexColor('#BD9E2F'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Text('Place order',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                ),
              ),
              onPressed: () {
                showAlert(context);
              },
            ),
            Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: Image.asset(
                    'assets/Component 109.png', color: HexColor('#BD9E2F'),),
                )
            )


          ],

        ),

      ),

    );
  }


  _column_text(String txt) {
    return Text(txt,
      style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black
      ),
    );
  }


  _commen_app_bar() {
    return AppBar(
      title: Text('Check Out', style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontFamily: ArabicFonts.Cairo,
          // package: 'google_fonts_arabic',
          color: HexColor('#BD9E2F')
      ),),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: InkWell(
        child: Image.asset('assets/btn-back.png', color: HexColor('#BD9E2F'),),
        onTap: () {
          Navigator.pop(context);
        },
      ),

      actions: [
        InkWell(
          child: Image.asset(
            'assets/cart-icon.png', color: HexColor('#BD9E2F'),),
          onTap: () {},
        )
      ],

    );
  }

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Image.asset('assets/completed-illustration.png'),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Thank you !', style: TextStyle(
                  color: HexColor('#BD9E2F'),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              SizedBox(height: 25,),
              Text('Your payment is completed', style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),),
              SizedBox(height: 5,),
              Text('Successfully , please check the', style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),),
            ],
          ),
          actions: <Widget>[
            MaterialButton(
                minWidth: 500,
                height: 50,
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Text('Back to shop' , style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),),
                onPressed:(){},
              ),

          ],
        );
      },
    );
  }



}
