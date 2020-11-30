import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/filter_screen.dart';

class SearchScren extends StatefulWidget {
  @override
  _SearchScrenState createState() => _SearchScrenState();
}

class _SearchScrenState extends State<SearchScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#D0D2D3'),
      appBar:  AppBar(
        title: Text( 'Search' , style: TextStyle(
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
            child: Image.asset(
              'assets/filter-icon.png', color: HexColor('#BD9E2F'), width: 20,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute( builder: (context)=> FilterScreen()));
            },
          ),
          InkWell(
            child: Image.asset('assets/cart-icon.png' , color: HexColor('#BD9E2F')),
            onTap: (){},
          )
        ],

      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: HexColor('#D0D2D3'),
          padding: const EdgeInsets.only( top: 15 , left: 15 , right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _search_bar(),
              SizedBox(
                height: 40,
              ),
              _comm_text(),
              SizedBox(
                height: 20,
              ),

              product_card_search(context),

              SizedBox(
                height: 20,
              ),

              product_discount_list_search(context),



            ],
          ),
        ) ,
      ),

    );
  }


  _comm_text(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('15 Products found' , style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: HexColor('#BD9E2F')
        ),),

        SizedBox(
          width: 90,
        ),

        Text('View all' , style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: HexColor('#BD9E2F')
        ),),
       InkWell(
         child:  Icon( Icons.keyboard_arrow_down , color: HexColor('#BD9E2F'),),
         onTap: (){},
       )
      ],
    );
  }


  _search_bar(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      padding: const EdgeInsets.only( bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: HexColor('#F6F6F6')
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: 'type your search word here',
          hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: HexColor('#8E8E93')
          ),
          prefixIcon: IconButton(
            icon: Icon(Icons.search , color: HexColor('#BD9E2F'),),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}
