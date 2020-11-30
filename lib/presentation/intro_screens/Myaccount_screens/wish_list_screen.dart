import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';

class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text( 'Wishlist', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontFamily: ArabicFonts.Cairo,
           // package: 'google_fonts_arabic',
            color: HexColor('#BD9E2F')
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
            child: Image.asset('assets/cart-icon.png' , color: HexColor('#BD9E2F'),),
            onTap: (){},
          )
        ],

      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.9,
        padding: const EdgeInsets.only( top: 10, left: 10 , right: 10),
        child: ListView.builder(
          itemCount: 6,
            itemBuilder: ( BuildContext context , int index){
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 125,
              padding: EdgeInsets.only( top: 10 ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 95,
                        height: 95,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: ExactAssetImage('assets/4627-5.jpg' ),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      Image.asset('assets/btn-close.png', )
                    ],
                  ),

                  SizedBox(
                    width: 10,
                  ),

                 Padding(
                   padding: EdgeInsets.only(left: 10 , top: 20),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Abaya King My Scarf',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 14,
                           fontWeight: FontWeight.w400,

                         ),
                       ),
                       SizedBox( height: 5,),
                       Text('150.00 SAR' , style: TextStyle(
                         color: HexColor('#BD9E2F'),
                         fontWeight: FontWeight.w600,
                         fontSize: 14,
                         fontFamily: ArabicFonts.Cairo,
                         package: 'google_fonts_arabic',
                       ),),
                       SizedBox( height: 5,),
                       InkWell(
                         child: Container(
                           width: 121,
                           height: 33,
                           padding: EdgeInsets.only( left: 10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: HexColor('#D0D2D3'),
                           ),
                           child: Row(
                             mainAxisSize: MainAxisSize.min,
                               children: [
                                 Image.asset('assets/cart-icon.png' , color: Colors.white),
                                 SizedBox( width: 5,),
                                 Text('Add to Cart' , style: TextStyle(
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400,
                                   fontFamily: ArabicFonts.Cairo,
                                     package: 'google_fonts_arabic',
                                   color: Colors.white
                                 ),),
                               ],
                             ),
                           ),
                         onTap: (){},
                       )
                     ],
                   )
                 ),
                ],
              ),
            );
            }
        ),
      ),
    );
  }
}
