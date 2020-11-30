import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Bottom_nav_screens/navy_pages/search_screen.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  double _lowerValue = 50;
  double _upperValue = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text( 'Filters' , style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontFamily: ArabicFonts.Cairo,
            // package: 'google_fonts_arabic',
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
      body:  SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.9,
              padding: EdgeInsets.only( top: 10, right: 10, left: 10, bottom: 80),
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: ( BuildContext context , int index){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _title_text('Category'),
                        SizedBox( height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            filter_button('Fabrics( 95)'),
                            filter_button('Abaya( 160)'),
                            filter_button('Scarf( 250)'),
                          ],
                        ),
                        SizedBox( height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            filter_button('Fabrics 2 (75)'),
                            filter_button('Abaya 3 (55)'),
                          ],
                        ),
                        _divider(),
                        SizedBox( height: 5,),
                        _title_text('Price'),
                        SizedBox( height: 5,),
                        _price_range_slider(),
                        Text('10.005 SSR - 1000.005 SSR', style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: HexColor('#0E153D')
                        ),),
                        SizedBox( height: 5,),
                        _divider(),
                        SizedBox( height: 5,),
                        _title_text('Colors'),
                        SizedBox( height: 10,),
                        _color_list(),
                        SizedBox( height: 10,),
                        _divider(),
                        SizedBox( height: 10,),
                        _title_text('Sort by'),
                        _divider(),
                        _title_text('Size'),
                        _divider(),
                        _title_text('Sleeve type'),
                        _divider(),
                        SizedBox( height: 10,),
                        _title_text('Model'),
                        _divider(),
                        _apply_clear_button()
                      ],
                    );
                  }
              ),


          ),
        ),
      );

  }

  _title_text( String txt){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text( txt, style: TextStyle(
            fontWeight: FontWeight.w400,
            color: HexColor('#0E153D'),
            fontSize: 20
        ),),
        Icon( Icons.keyboard_arrow_down , color: HexColor('#BD9E2F'),),
      ],
    );
  }

  _divider(){
    return Divider(
      thickness: 1,
      color: HexColor('#BD9E2F'),
    );
  }

  _color_list(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: HexColor('#97C3E9')
          ),
        ),
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: HexColor('#81E3BC')
          ),
        ),
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: HexColor('#FF9E9E')
          ),
        ),
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: HexColor('#BD9E2F')
          ),
        ),
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: HexColor('#D9A5F2')
          ),
        ),
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: HexColor('#D1D1D6')
          ),
        ),
      ],
    );
  }

  _apply_clear_button(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: HexColor('#BD9E2F')
            ),
            child: Center(
              child: Text('Apply Filter' , style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),),
            ),
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScren()));
          },
        ),
        InkWell(
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: HexColor('#D0D2D3')
            ),
            child: Center(
              child: Text('Clear All' , style: TextStyle(
                color: HexColor('#333333'),
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),),
            ),
          ),
          onTap: (){},
        ),
      ],
    );
  }



  _price_range_slider(){
    return  Container(
      child: FlutterSlider(
       values: [1000, 25000],
       rangeSlider: true,
        max: 25000,
        min: 0,
       step: FlutterSliderStep(step: 100),
        jump: true,
        trackBar: FlutterSliderTrackBar(
          activeTrackBarHeight: 2,
          activeTrackBar: BoxDecoration(color: HexColor('#BD9E2F')),
         ),
        tooltip: FlutterSliderTooltip(
        textStyle: TextStyle(fontSize: 17, color: Colors.lightBlue),
         ),
        handler: FlutterSliderHandler(
        decoration: BoxDecoration(),
       child: Container(
         decoration: BoxDecoration(
        color: HexColor('#BD9E2F'),
        borderRadius: BorderRadius.circular(20)),
         padding: EdgeInsets.all(7),
         child: Container(
           padding: EdgeInsets.all(10),
           decoration: BoxDecoration(
           color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
         ),
       ),
        ),
        rightHandler: FlutterSliderHandler(
          decoration: BoxDecoration(),
          child: Container(
            decoration: BoxDecoration(
                color: HexColor('#BD9E2F'),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(7),
             child: Container(
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
               color: Colors.white,
                 borderRadius: BorderRadius.circular(20)),
               ),
          ),
          ),
        disabled: false,
        onDragging: (handlerIndex, lowerValue, upperValue) {
         setState(() {
         lowerValue = _lowerValue;
         _upperValue = upperValue;
       });
    },
    )
    );
  }
}
