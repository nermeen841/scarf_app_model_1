import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/reviews_page.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class AddReviewScreen extends StatefulWidget {
  @override
  _AddReviewScreenState createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {

  var rating = 1.0;
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _commen_app_bar(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only( top: 15 , left: 15, right: 15, bottom: 15),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _head_text('Your rating *'),
                  SmoothStarRating(
                    rating: rating,
                    isReadOnly: false,
                    size: 40,
                    color: HexColor('#BD9E2F'),
                    borderColor: HexColor('#BD9E2F'),
                    filledIconData: Icons.star,
                    halfFilledIconData: Icons.star_half,
                    defaultIconData: Icons.star_border,
                    starCount: 5,
                    allowHalfRating: true,
                    spacing: 8.0,
                    onRated: (value) {
                      print("rating value -> $value");
                      // print("rating value dd -> ${value.truncate()}");
                    },
                  )
                ],
              ),
              SizedBox( height: 20,),
              _head_text('Your Review *'),
              SizedBox( height: 10,),
              Container(
                width: 343,
                height: 154,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: HexColor('#F6F6F6'),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: '',
                    hintMaxLines: 10,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,

                  ),
                ),
              ),
              SizedBox( height: 20,),
              _head_text('Name *'),
              SizedBox( height: 10,),
              Container(
                width: 343,
                height: 40,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: HexColor('#F6F6F6'),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: '',
                    hintMaxLines: 10,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,

                  ),
                ),
              ),
              SizedBox( height: 20,),
              _head_text('Email *'),
              SizedBox( height: 10,),
              Container(
                width: 343,
                height: 40,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: HexColor('#F6F6F6'),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: '',
                    hintMaxLines: 10,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,

                  ),
                ),
              ),
              SizedBox( height: 10,),
              Row(
                children: [
                  Checkbox(
                      value: checkBoxValue,
                      activeColor: HexColor("#BD9E2F"),
                      onChanged:(bool newValue){
                        setState(() {
                          checkBoxValue = newValue;
                        });
                      }),
                  Expanded(
                    child: Text('Save my name , email and website in this browser' ,  style: TextStyle(
                      color: HexColor('#0E153D'),
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: ArabicFonts.Cairo,
                    ),),
                  )
                ],
              ),
              SizedBox( height: 20,),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                height: 50,
                color: HexColor('#BD9E2F'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Text('Submit' , style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ), ),

                onPressed: (){
                 // Navigator.push(context, MaterialPageRoute( builder: (context)=> ReviewsPage()));
                },
              ),
              SizedBox( height: 40,),
              Center(
                child: Image.asset(
                  'assets/Component 109.png', color: HexColor('#BD9E2F'),),
              )


            ],
          ),

        ),
      )
    );
  }


  _head_text( String txt){
    return  Text( txt, style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: HexColor('#0E153D')
    ),);
  }


  _commen_app_bar() {
    return AppBar(
      title: Text('Add Review', style: TextStyle(
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
}
