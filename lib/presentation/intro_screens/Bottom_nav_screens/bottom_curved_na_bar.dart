import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Bottom_nav_screens/navy_pages/home_scren.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/filter_screen.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/product_detail_screen.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/drawer_screens/categories.dart';

import 'navy_pages/search_screen.dart';


class BottomCarvedNv extends StatefulWidget {
  @override
  _BottomCarvedNvState createState() => _BottomCarvedNvState();
}

class _BottomCarvedNvState extends State<BottomCarvedNv> {




  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Container(
        width: 216,
        height: 732,
        child: drawer_data(context),
        decoration: BoxDecoration(
          border: Border.all( color: HexColor('#000000')),
          boxShadow: [ BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),],
        ),
      ),
      body: Stack(
        children: [
          HomeScreen(),  //ProductDetailScreen(),//FilterScreen(),//SearchScren(),// Categories(),
          Positioned(
            bottom: 0,
            left: 0,
            // container for bottom navigation shape
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size( size.width , 90),
                    painter: BnbCustomPainter(),

                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                      backgroundColor: Colors.black54,
                      child: Icon( Icons.category, color: Colors.white,),
                      onPressed: (){},
                    ),
                  ),

                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          circular_icon(
                              Center(
                                child: InkWell(
                                  child: Image.asset("assets/home.png" , color: Colors.white,),
                                  onTap: (){},
                                ),
                              ),
                          ),

                          circular_icon( Image.asset("assets/icon-user.png" , color: Colors.white,),
                          ),

                          Container( width: size.width *0.20 ,),

                          circular_icon(
                              Icon( Icons.search, color: Colors.white,),
                          ),

                          circular_icon(
                              Icon( Icons.favorite_border , color: Colors.white,),
                          )

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          main_text('Home'),
                          main_text('Order'),
                          main_text('Categories'),
                          main_text('Search'),
                          main_text('Favourite')
                        ],
                      ),
                    ],
                  ),


                ],

              ),

            ),
          )
        ],
      ),
    );
  }

main_text( String txt){
    return Text(
      txt,
      style: TextStyle(
        color: Colors.black54,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: ArabicFonts.Cairo
      ),
    );
}


  circular_icon( Widget child , ){
    return Container(
      margin: EdgeInsets.only( top: 20),
      width: 34,
      height: 34,
      child: InkWell(
        child: child,
        onTap: (){

        },
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle
      ),
    );
  }
}




class BnbCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = HexColor('#BD9E2F')..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20); // initial point of our shape

    path.quadraticBezierTo(size.width*0.60, 0, size.width*0.40, 0);
    path.quadraticBezierTo(size.width*0.40, 0, size.width*0.40, 20);
    path.arcToPoint(
      Offset( size.width*0.60 , 20) ,
      radius: Radius.circular( 8.0) ,
      clockwise: false,
    );

    path.quadraticBezierTo(size.width*0.60, 0, size.width*0.65, 0);
    path.quadraticBezierTo(size.width*0.80, 0, size.width, 0);
    path.lineTo( size.width, size.height);
    path.lineTo(0,  size.height);
    path.close();
    canvas.drawPath(path, paint);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false ;
  }



}