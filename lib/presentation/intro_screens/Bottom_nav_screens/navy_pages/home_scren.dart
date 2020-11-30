import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/domain/category/latest_product_domain/latest_product_data_api.dart';
import 'package:scarf_app_model_1/domain/category/most_visited_domain/most_visited_data_api.dart';
import 'package:scarf_app_model_1/domain/category/offers_domain/offers_data_api.dart';
import 'package:scarf_app_model_1/domain/category/salles_domain/sales_data_api.dart';
import 'package:scarf_app_model_1/domain/category/slider/slider_data_api.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Bottom_nav_screens/view_all_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text( 'Discover' , style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontFamily: ArabicFonts.Cairo,
            color: HexColor('#BD9E2F')
        ),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Image.asset(
          'assets/menu-icon.png',
          color: HexColor('#BD9E2F') ,
        ),
        actions: [
          InkWell(
            child: Image.asset('assets/cart-icon.png' , color: HexColor('#BD9E2F')),
            onTap: (){},
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsets.only( top: 15 , right: 15 , left: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              search_button( context),
              SizedBox( height: 20,),
              Container(
                width: 343,
                height: 150,
                child: SliderPage(),
              ),
              SizedBox( height: 20,),
              header2_text('Featured'),
              SizedBox( height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 223,
                child: OffersPage(),
              ),
              SizedBox( height: 20),
              header_text('New Arrivals'),
              SizedBox( height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 223,
                child: LatestProductPage(),
              ),
              SizedBox( height: 20),
              header_text('Most Sales'),
              SizedBox( height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 240,
                child: SalesPage(),
              ),
              SizedBox( height: 20),
              header_text('Most Visited'),
              SizedBox( height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 223,
                child: MostvisitedPage(),
              ),



            ],
          ),
        ),
      ),
    );
  }

  header_text( String txt ){
    return Row(
      children: [
        Text(
          txt ,
          style: TextStyle(
            fontFamily: ArabicFonts.Cairo,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 16
          ),
        ),

        SizedBox( width: 165,),



        Text( 'View all',
          style: TextStyle(
              fontFamily: ArabicFonts.Cairo,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 14
          ),
        ),

        InkWell(
          child: Icon(Icons.keyboard_arrow_down , color: Colors.black,),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: ( context)=> ViewallPage()
            ));
          },
        )
      ],
    );
  }

  header2_text( String txt ){
    return Row(
      children: [
        Text(
          txt ,
          style: TextStyle(
              fontFamily: ArabicFonts.Cairo,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 16
          ),
        ),

        SizedBox( width: 190,),



        Text( 'View all',
          style: TextStyle(
              fontFamily: ArabicFonts.Cairo,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 14
          ),
        ),

        InkWell(
          child: Icon(Icons.keyboard_arrow_down , color: Colors.black,),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder: ( context)=> ViewallPage()
            ));
          },
        )
      ],
    );
  }
}

