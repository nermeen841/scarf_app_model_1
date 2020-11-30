import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/bottom_nav_test.dart';
import 'package:scarf_app_model_1/core/color.dart';



class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text( 'My Cart' , style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: ArabicFonts.Cairo,
            color: HexColor('#0E153D')
        ),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: InkWell(
          child: Image.asset('assets/btn-back.png' , color: HexColor('#BD9E2F') ,),
          onTap: (){
            Navigator.pop(context);
          },
        ),

        actions: [
          InkWell(
            child: Image.asset('assets/cart-icon.png' , color: HexColor('#BD9E2F')),
            onTap: (){},
          )
        ],

      ),
     // appBar: comm_appbar('My Cart', context),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Center(
              child: Stack(
                children: [

                  Center(
                    child:  Image.asset('assets/circle.png' , color: HexColor('#D0D2D3'),),
                  ),

                  Padding(
                    padding: EdgeInsets.only( top: 60 , left: 115),
                    child: Image.asset('assets/empty-cart.png' , color: HexColor('#BD9E2F') ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only( top: 200, ),
                    child:  Center(
                      child: Column(
                        children: [
                          Text(
                            'Empty Cart !',
                            style:TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: ArabicFonts.Cairo,
                                color: HexColor('#BD9E2F')
                            ),
                          ),

                          SizedBox(
                            height: 15,
                          ),

                          Text(
                            'Hey , add some awesome ',
                            style:TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: ArabicFonts.Cairo,
                                color: Colors.black
                            ),
                          ),

                          SizedBox(
                            height: 5,
                          ),

                          Text(
                            'Products into your cart ',
                            style:TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: ArabicFonts.Cairo,
                                color: Colors.black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.only( top: 420, right: 15 , left: 15,),
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.only( top: 15),
                        width: 343,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor("#BD9E2F"),
                        ),
                        child: Text( 'Shop Now' , style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: ( context)=> TestBotomNav()
                        ));

                      },
                    )

                  )],
              ),
            ),


        ),
    
    );
  }
}
