import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/product_detail_screen.dart';
import 'package:shimmer/shimmer.dart';

import '../bottom_nav_test.dart';



search_button( BuildContext context){
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
          icon: Icon(Icons.search , color: HexColor('#8E8E93'),),
          onPressed: (){},
        ),
      ),
    ),
  );
}





product_card( BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 223,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
        itemBuilder: ( BuildContext context , int index){
        return Stack(
          children: [

            Stack(
              children: [
                Container(
                  width: 130,
                  height: 223,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: ExactAssetImage('assets/unnamed.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only( top: 150 , left: 20 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('عبايه ملكي تطريز يدوي' , style: TextStyle(
                          color: Colors.black,
                          fontFamily: ArabicFonts.Cairo,
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                        package: 'google_fonts_arabic',
                      ),
                        textDirection: TextDirection.rtl,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text('299 ر.س' , style: TextStyle(
                            color: HexColor('#FE4545'),
                            fontFamily: ArabicFonts.Cairo,
                            fontWeight: FontWeight.w600,
                            package: 'google_fonts_arabic',
                            fontSize: 13
                        ),
                          textDirection: TextDirection.rtl,
                        ),
                      ),

                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              width: 57,
                              height: 22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: HexColor('#BD9E2F')
                              ),
                              child: Center(
                                child: Text(
                                  'اضافه',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: ArabicFonts.Cairo,
                                      color: Colors.white,
                                    package: 'google_fonts_arabic',
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=> ProductDetailScreen()
                              ));
                            },
                          ),
                          SizedBox( width: 10,),
                          InkWell(
                            child: Container(
                              width: 22,
                              height: 22,
                              child: Center(
                                child: Icon( Icons.favorite_border , color: HexColor('#FF7070'), size: 20,),
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor('#D0D2D3')
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only( left: 80),
              child: Image.asset('assets/badge-new.png'),
            )

          ],
        );
        }
    ),

  );

}


product_discount_list( BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 223,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: ( BuildContext context , int index){
          return Stack(
            children: [

              Stack(
                children: [
                  Container(
                    width: 130,
                    height: 223,
                    margin: EdgeInsets.only(left: 5, right: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: ExactAssetImage('assets/IMG-20200618-WA0022-599x700.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only( top: 150 , left: 20 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('عبايه ملكي تطريز يدوي' , style: TextStyle(
                            color: Colors.black,
                            fontFamily: ArabicFonts.Cairo,
                            fontWeight: FontWeight.w600,
                            package: 'google_fonts_arabic',
                            fontSize: 11
                        ),
                          textDirection: TextDirection.rtl,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text('299 ر.س' , style: TextStyle(
                              color: HexColor('#FE4545'),
                              fontFamily: ArabicFonts.Cairo,
                              fontWeight: FontWeight.w600,
                              package: 'google_fonts_arabic',
                              fontSize: 13
                          ),
                            textDirection: TextDirection.rtl,
                          ),
                        ),

                        Row(
                          children: [
                            InkWell(
                              child: Container(
                                width: 57,
                                height: 22,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: HexColor('#BD9E2F')
                                ),
                                child: Center(
                                  child: Text(
                                    'اضافه',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: ArabicFonts.Cairo,
                                        color: Colors.white,
                                      package: 'google_fonts_arabic',
                                    ),
                                  ),
                                ),
                              ),
                              onTap: (){},
                            ),
                            SizedBox( width: 10,),
                            InkWell(
                              child: Container(
                                width: 22,
                                height: 22,
                                child: Center(
                                  child: Icon( Icons.favorite_border , color: HexColor('#FF7070'), size: 20,),
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: HexColor('#D0D2D3')
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),


            ],
          );
        }
    ),

  );


}






product_discount_list_search( BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 223,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: ( BuildContext context , int index){
          return Stack(
            children: [

              Stack(
                children: [
                  Container(
                    width: 130,
                    height: 223,
                    margin: EdgeInsets.only(left: 5, right: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: ExactAssetImage('assets/IMG-20200618-WA0022-599x700.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only( top: 150 , left: 20 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('عبايه ملكي تطريز يدوي' , style: TextStyle(
                            color: Colors.black,
                            fontFamily: ArabicFonts.Cairo,
                            fontWeight: FontWeight.w600,
                            package: 'google_fonts_arabic',
                            fontSize: 11
                        ),
                          textDirection: TextDirection.rtl,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text('299 ر.س' , style: TextStyle(
                              color: HexColor('#FE4545'),
                              fontFamily: ArabicFonts.Cairo,
                              fontWeight: FontWeight.w600,
                              package: 'google_fonts_arabic',
                              fontSize: 13
                          ),
                            textDirection: TextDirection.rtl,
                          ),
                        ),

                        Row(
                          children: [
                            InkWell(
                              child: Container(
                                width: 57,
                                height: 22,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: HexColor('#BD9E2F')
                                ),
                                child: Center(
                                  child: Text(
                                    'اضافه',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: ArabicFonts.Cairo,
                                        color: Colors.white,
                                      package: 'google_fonts_arabic',
                                    ),
                                  ),
                                ),
                              ),
                              onTap: (){},
                            ),
                            SizedBox( width: 10,),
                            InkWell(
                              child: Container(
                                width: 22,
                                height: 22,
                                child: Center(
                                  child: Icon( Icons.favorite_border , color: HexColor('#FF7070'), size: 20,),
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: HexColor('#D0D2D3')
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( left: 110 , bottom: 200),
                    child:  InkWell(
                      child: Image.asset('assets/btn-close.png'),
                      onTap: (){},
                    ),
                  ),
                ],
              ),


            ],
          );
        }
    ),

  );


}



product_card_search( BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 223,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: ( BuildContext context , int index){
          return Stack(
            children: [

              Stack(
                children: [
                  Container(
                    width: 130,
                    height: 223,
                    margin: EdgeInsets.only(left: 5, right: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: ExactAssetImage('assets/unnamed.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only( top: 150 , left: 20 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('عبايه ملكي تطريز يدوي' , style: TextStyle(
                            color: Colors.black,
                            fontFamily: ArabicFonts.Cairo,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.w600,
                            fontSize: 11
                        ),
                          textDirection: TextDirection.rtl,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text('299 ر.س' , style: TextStyle(
                              color: HexColor('#FE4545'),
                              fontFamily: ArabicFonts.Cairo,
                              package: 'google_fonts_arabic',
                              fontWeight: FontWeight.w600,
                              fontSize: 13
                          ),
                            textDirection: TextDirection.rtl,
                          ),
                        ),

                        Row(
                          children: [
                            InkWell(
                              child: Container(
                                width: 57,
                                height: 22,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: HexColor('#BD9E2F')
                                ),
                                child: Center(
                                  child: Text(
                                    'اضافه',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: ArabicFonts.Cairo,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                              onTap: (){},
                            ),
                            SizedBox( width: 10,),
                            InkWell(
                              child: Container(
                                width: 22,
                                height: 22,
                                child: Center(
                                  child: Icon( Icons.favorite_border , color: HexColor('#FF7070'), size: 20,),
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: HexColor('#D0D2D3')
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only( left: 80),
                child: Image.asset('assets/badge-new.png'),
              ),

              Padding(
                padding: const EdgeInsets.only( left: 110 , bottom: 200),
                child:  InkWell(
                  child: Image.asset('assets/btn-close.png'),
                  onTap: (){},
                ),
              ),

            ],
          );
        }
    ),

  );

}



comm_appbar( String txt , BuildContext context){

  return AppBar(
    title: Text( txt , style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: ArabicFonts.Cairo,
        package: 'google_fonts_arabic',
      color: HexColor('#BD9E2F')
    ),),
    centerTitle: true,
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    automaticallyImplyLeading: false,
    leading: InkWell(
      child: Image.asset('assets/btn-back.png' , color: HexColor('#BD9E2F') ,),
      onTap: (){
        Navigator.push(context, MaterialPageRoute( builder: (context)=> TestBotomNav()));
      },
    ),

    actions: [
      InkWell(
        child: Image.asset('assets/cart-icon.png' , color: HexColor('#BD9E2F'),),
        onTap: (){},
      )
    ],

  );
}

commen_button( String txt , ){
  return InkWell(
    child: Container(
      padding: EdgeInsets.only( top: 15),
      width: 343,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: HexColor("#BD9E2F"),
      ),
      child: Text( txt , style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.bold
      ),
        textAlign: TextAlign.center,
      ),
    ),

    onTap: (){

    },
  );

}

Widget NormalShimmer() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300],
    highlightColor: Colors.grey[100],
    enabled: true,
    child: ListView.builder(
      itemBuilder: (_, __) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48.0,
              height: 48.0,
              color: Colors.white,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 8.0,
                    color: Colors.white,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                  ),
                  Container(
                    width: double.infinity,
                    height: 8.0,
                    color: Colors.white,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                  ),
                  Container(
                    width: 40.0,
                    height: 8.0,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      itemCount: 6,
    ),
  );
}

Widget ListShimmer() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300],
    highlightColor: Colors.grey[100],
    enabled: true,
    child: ListView.builder(
      itemBuilder: (_, __) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 8.0,
                    color: Colors.white,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                  ),
                  Container(
                    width: double.infinity,
                    height: 8.0,
                    color: Colors.white,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                  ),
                  Container(
                    width: 40.0,
                    height: 8.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Container(
                        width: 40.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Container(
                        width: 40.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      itemCount: 6,
    ),
  );
}

Widget Loading() {
  return Center(
    child: CupertinoActivityIndicator(
      radius: 17,
      animating: true,
    ),
  );
}


Widget cachImage(String url, double h, double w) {
  return CachedNetworkImage(
    imageUrl: url,
    width: w,
    height: h,
    fit: BoxFit.cover,
    placeholder: (context, url) => Loading(),
    errorWidget: (context, url, error) => Icon(Icons.error),
  );
}

filter_button( String txt ){
  return InkWell(
    child: Container(
      width: 100,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: HexColor('#F2F2F7')
      ),
      child: Center(
        child: Text(txt , style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: HexColor('#0E153D')
        ),),
      ),
    ),

    onTap: (){

    },

  );
}