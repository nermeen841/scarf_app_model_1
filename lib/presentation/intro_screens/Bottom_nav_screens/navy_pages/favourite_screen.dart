import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Log_screens/signe_in_page.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text( 'My Favourite' , style: TextStyle(
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
                        'No favourite yet !',
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
                        'Register or Sign in now , ',
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
                        'To enjoy the app',
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
                      child: Text( 'Sign In' , style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: ( context)=> SigneInScreen()
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
