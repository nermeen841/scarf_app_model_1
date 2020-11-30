import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/reviews_page.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/shiping_cart_screen.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/specification_screen.dart';
import 'package:scarf_app_model_1/state_store/product_detail_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';



class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("=================");
    return Scaffold(
      body: WhenRebuilderOr<ProductdetailStore>(
        initState: (context, rm) => rm.setState((s) => s.getProductdetail()),
        observe: () => RM.get<ProductdetailStore>(),
        builder: (context, model) => ProductDetailScreen(),
        onWaiting: () => Loading(),
        onError: (error) => IN.get<ProductdetailStore>().getProductdetail()== null
            ? Text('$error')
            : ProductDetailScreen(),
      ),
    );
  }
}





class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {


  final productdetailModel = IN.get<ProductdetailStore>().productdetailModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        title: Text( 'عبايه ملكي تطريز يدوي' , style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: ArabicFonts.Cairo,
            color: HexColor('#BD9E2F'),
          package: 'google_fonts_arabic',
        ),
          textDirection: TextDirection.rtl,
        ),
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only( left: 15, top: 15, right: 15 , bottom: 30),
        child: SingleChildScrollView(
         child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _product_image(),
              SizedBox( height: 15,),
              Center(
                child: Text('مواصفات اضافيه' , style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  fontFamily: ArabicFonts.Cairo,
                  package: 'google_fonts_arabic',
                ),
                  textDirection: TextDirection.rtl,
                ),
              ),
              _buttons_datails(),
              SizedBox( height: 25,),
              _color_size_selection(),
              SizedBox( height: 25,),

              InkWell(
                child: Container(
                  padding: EdgeInsets.only( top: 15),
                  width: 343,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HexColor("#BD9E2F"),
                  ),
                  child: Text( 'Add to Cart' , style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),

                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: ( context)=> ShopingCartScreen()
                  ));

                },
              )


            ],
          ),
        ),
      ),
      )
    );
  }


_buttons_datails(){
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         SizedBox(
           width: 114,
           height: 36,
           child:  RaisedButton(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0),),
             color: HexColor('#F2F2F7'),
             highlightColor: HexColor('#BD9E2F'),
             child: Text('Additional info', style: TextStyle(
                 fontSize: 12,
                 fontFamily: ArabicFonts.Cairo,
                 fontWeight: FontWeight.w400,
                 color: HexColor('#0E153D')
             ),),
             onPressed: (){},
           ),
         ),
          SizedBox(
            width: 90,
            height: 36,
            child:  RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),),
              color: HexColor('#F2F2F7'),
              highlightColor: HexColor('#BD9E2F'),
              child: Text('Reviews' + productdetailModel.data.rating, style: TextStyle(
                  fontSize: 14,
                  fontFamily: ArabicFonts.Cairo,
                  fontWeight: FontWeight.w400,
                  color: HexColor('#0E153D')
              ),),
              onPressed: (){
                Navigator.push(context ,
                  MaterialPageRoute( builder: (context)=> ReviewScreen())
                );
              },
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),),
            color: HexColor('#F2F2F7'),
            highlightColor: HexColor('#BD9E2F'),
            child: Text('Specification', style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: HexColor('#0E153D')
            ),),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SpecificationPage()));
            },
          ),
        ],
      );



}



  _product_image(){
    return Stack(
      children: [
        Container(
          width: 343,
          height: 280,
          decoration: BoxDecoration(
            border: Border.all( color: HexColor('#BD9E2F')),
            borderRadius: BorderRadius.circular(20),),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network( productdetailModel.data.image , fit: BoxFit.cover,),
          ),
        ),
       Padding(
         padding: EdgeInsets.only( top: 240),
         child:  Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Container(
               width: 80,
               height: 80,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all( color: HexColor('#BD9E2F')),
               ),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(15),
                 child: Image.network( productdetailModel.data.images[0] , fit: BoxFit.cover,),
               ),
             ),
             Container(
               width: 80,
               height: 80,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all( color: HexColor('#BD9E2F')),
               ),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(15),
                 child: Image.network( productdetailModel.data.images[1], fit: BoxFit.cover,),
               ),
             ),
             Container(
               width: 80,
               height: 80,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all( color: HexColor('#BD9E2F')),
               ),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(15),
                 child: Image.network( productdetailModel.data.images[2] , fit: BoxFit.cover,),
               ),
             ),
           ],
         ),
       ),
        Padding(
          padding: EdgeInsets.only( top: 50 , left: 10),
          child: Column(
            children: [
              Container(
                width: 30,
                height: 30,
                child: Center(
                  child: Icon( Icons.favorite_border , color: HexColor('#FF7070'), size: 20,),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#D0D2D3')
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 30,
                height: 30,
                child: Center(
                  child: Image.asset('assets/enlarge-icon.png'),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#D0D2D3')
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Container(
                width: 30,
                height: 30,
                child: Center(
                  child: Image.asset('assets/share-icon.png'),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#D0D2D3')
                ),
              ),



            ],
          ),
        ),
      ],
    );
  }


  _color_size_selection(){
    int counter;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only( top: 10),
                width: 50,
                height: 36,
                decoration: BoxDecoration(
                    color: HexColor('#BD9E2F'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)
                    )
                ),
                child: Text('Color:' , style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400
                ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 99,
                height: 36,
                decoration: BoxDecoration(
                    border: Border.all( color: HexColor('#BD9E2F')),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor('#7C919B')
                      ),
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor('#045452')
                      ),
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor('#D19C7E')
                      ),
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor('#909AD5')
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Row(
            children: [
              Container(
                padding: EdgeInsets.only( top: 10),
                width: 40,
                height: 36,
                decoration: BoxDecoration(
                    color: HexColor('#BD9E2F'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)
                    )
                ),
                child: Text('Size:' , style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400
                ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox( height: 15,),
              Container(
                width: 99,
                height: 36,
                decoration: BoxDecoration(
                    border: Border.all( color: HexColor('#BD9E2F')),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text( productdetailModel.data.options[0].values[0].name, style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: ArabicFonts.Cairo,
                        fontSize: 13
                    ),),
                    Text(productdetailModel.data.options[0].values[1].name , style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: ArabicFonts.Cairo,
                        fontSize: 13
                    ),),
                    Text('60' , style: TextStyle(
                        color: HexColor('#BD9E2F'),
                        fontWeight: FontWeight.w600,
                        fontFamily: ArabicFonts.Cairo,
                        fontSize: 13
                    ),),
                    Text('65' , style: TextStyle(
                        color: HexColor('#BD9E2F'),
                        fontWeight: FontWeight.w600,
                        fontFamily: ArabicFonts.Cairo,
                        fontSize: 13
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
        SizedBox( height: 15,),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only( top: 10),
              width: 50,
              height: 36,
              decoration: BoxDecoration(
                  color: HexColor('#BD9E2F'),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)
                  )
              ),
              child: Text('Quantity:' , style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400
              ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                padding: EdgeInsets.only( top: 10),
              width: 34,
              height: 36,
              decoration: BoxDecoration(
                  border: Border.all( color: HexColor('#BD9E2F')),
              ),
              child: InkWell(
                child:  Text('-' , style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
                  textAlign: TextAlign.center,
                ),
                onTap: (){
                  setState(() {
                    counter--;
                    return counter;
                  });
                },
              )
            ),
            Container(
                padding: EdgeInsets.only( top: 10),
                width: 34,
                height: 36,
                decoration: BoxDecoration(
                  border: Border.all( color: HexColor('#BD9E2F')),
                ),
                child: Text(counter.toString() , style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
                  textAlign: TextAlign.center,
                )
            ),
            Container(
                padding: EdgeInsets.only( top: 10),
                width: 34,
                height: 36,
                decoration: BoxDecoration(
                  border: Border.all( color: HexColor('#BD9E2F')),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  )
                ),
                child: InkWell(
                  child: Text('+' , style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: (){
                      setState(() {
                        counter ++;
                      });
                      return counter;
                  },
                )
            ),
            SizedBox( width: 20,),
            Text((productdetailModel.data.price.toString())+productdetailModel.data.currency  ,
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: ArabicFonts.Cairo,
              fontSize: 20,
              color: HexColor('#BD9E2F')
            ),)


          ],
        )
      ],
    );
  }
}
