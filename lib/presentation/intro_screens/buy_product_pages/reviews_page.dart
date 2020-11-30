import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/add_review_page.dart';
import 'package:scarf_app_model_1/state_store/review_store.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:states_rebuilder/states_rebuilder.dart';


class ReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("=================");
    return Scaffold(
      body: WhenRebuilderOr<ReviewStore>(
        initState: (context, rm) => rm.setState((s) => s.getReview()),
        observe: () => RM.get<ReviewStore>(),
        builder: (context, model) => ReviewsPage(),
        onWaiting: () => Loading(),
        onError: (error) => IN.get<ReviewStore>().getReview()== null
            ? Text('$error')
            : ReviewsPage(),
      ),
    );
  }
}










class ReviewsPage extends StatefulWidget {
  @override
  _ReviewsPageState createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {

  final reviewModel = IN.get<ReviewStore>().reviewModel;
  var rating = 4.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: _commen_app_bar(),
     bottomNavigationBar: Stack(
       children: [
         Container(
           width: MediaQuery.of(context).size.width,
           height: 100,
           padding: EdgeInsets.only( left: 15, right: 15),
            color: Colors.white,
          ),
         Container(
           decoration: BoxDecoration(
             color: Colors.transparent,
             boxShadow: [
               BoxShadow(
                 color: Colors.grey.withOpacity(0.5),
                 spreadRadius: 5,
                 blurRadius: 7,
                 offset: Offset(0, 3), // changes position of shadow
               ),
             ],
           ),
           padding: EdgeInsets.only( left: 15, right: 15),
           child: MaterialButton(
             minWidth: MediaQuery.of(context).size.width,
             height: 50,
             color: HexColor('#BD9E2F'),

             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15)
             ),
             child: Row(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Icon( Icons.add , size: 20, color: Colors.white,),
                 SizedBox( width: 5,),
                 Text('Add a Review' , style: TextStyle(
                     fontSize: 17,
                     fontWeight: FontWeight.w500,
                     color: Colors.white
                 ), ),
               ],
             ),

             onPressed: (){
               Navigator.push(context, MaterialPageRoute(
                 builder: (context)=> AddReviewScreen()
               ));
             },
           ),
         )
       ],
     ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only( top: 15, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only( left: 50),
                child: Row(
                  children: [
                    Text('4.5' , style: TextStyle(
                      fontSize: 46,
                      fontWeight: FontWeight.w500,
                      color: HexColor('#0E153D')
                    ),),
                    SizedBox( width: 20,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SmoothStarRating(
                          rating: rating,
                          isReadOnly: false,
                          size: 20,
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
                        ),
                        Text('Based on 264 reviews' , style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: HexColor('#0E153D')
                        ),),

                      ],
                    )
                  ],
                )
              ),
              Divider(
                thickness: 1,
                color: HexColor('#E5E5EA'),
              ),
              SizedBox( height: 5,),
              _text_star_drawing('5', 0.95, '95 %'),
              _text_star_drawing('4', 0.10, '10 %'),
              _text_star_drawing('3', 0.05, '5 %'),
              _text_star_drawing('2', 0.02, '2 %'),
              _text_star_drawing('1', 0.01, '1 %'),
              SizedBox( height: 5,),
              Divider(
                thickness: 1,
                color: HexColor('#E5E5EA'),
              ),
              SizedBox( height: 5,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: ListView.builder(
                  itemCount: reviewModel.data.length,
                    itemBuilder: (BuildContext context , int index){
                    return Column(
                      children: [
                        Container(
                          width: 343,
                          height: 105,
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: HexColor('#E5E5EA'),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                  child: Image.network(reviewModel.data[index].userImage),
                                ),
                              ),
                              SizedBox( width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Text(reviewModel.data[index].userName , style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: HexColor('#0E153D')
                                      ),),
                                      SizedBox( width: 10,),
                                      Text(reviewModel.data[index].createdAt,  style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: HexColor('#E0B936')
                                      ),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SmoothStarRating(
                                        rating: rating,
                                        isReadOnly: true,
                                        size: 15,
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
                                      ),
                                      SizedBox( width: 10,),
                                      Text( reviewModel.data[index].rating.toString(), style: TextStyle(
                                          color: HexColor('#0E153D') ,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14
                                      ), )
                                    ],
                                  ),
                                  Text(reviewModel.data[index].comment,
                                    style: TextStyle(
                                        color: HexColor('#0E153D') ,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12
                                    ),
                                    maxLines: 3,
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: HexColor('#E5E5EA'),
                        ),

                      ],
                    );
                    }
                ),
              )


            ],
          ),
        ),
      ),

    );
  }

  _text_star_drawing( String txt , double percent , String txt2 ){
    return Row(
      children: [
        Text( txt, style: TextStyle(
            color: HexColor('#0E153D') ,
            fontWeight: FontWeight.w400,
          fontSize: 24
        ),),
        Icon(Icons.star , color: HexColor('#BD9E2F'),),
        Center(
          child: Padding(
            padding: EdgeInsets.all( 5),
            child: new LinearPercentIndicator(
              width: 250,
              animation: true,
              lineHeight: 7,
              animationDuration: 2000,
              percent: percent,
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: HexColor('#BD9E2F'),
            ),
          ),
        ),
        Text(txt2 , style: TextStyle(
            color: HexColor('#0E153D') ,
            fontWeight: FontWeight.w400,
            fontSize: 14
        ), )
      ],
    );
  }

  _commen_app_bar() {
    return AppBar(
      title: Text(' Reviews', style: TextStyle(
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
