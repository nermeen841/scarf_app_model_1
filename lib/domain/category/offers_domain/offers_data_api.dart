import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/product_detail_screen.dart';
import 'package:scarf_app_model_1/state_store/offers_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class OffersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("=================");
    return Scaffold(
      body: WhenRebuilderOr<OffersStore>(
        initState: (context, rm) => rm.setState((s) => s.getOffers()),
        observe: () => RM.get<OffersStore>(),
        builder: (context, model) => OffersScreen(),
        onWaiting: () => Loading(),
        onError: (error) => IN.get<OffersStore>().getOffers()== null
            ? Text('$error')
            : OffersScreen(),
      ),
    );
  }
}






class OffersScreen extends StatefulWidget {
  @override
  _OffersScreenState createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {


  final offersModel = IN.get<OffersStore>().offersModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 223,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: offersModel.data.length,
          itemBuilder: ( BuildContext context , int index){
            return Stack(
              children: [

                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 223,

                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network( offersModel.data[index].image , fit: BoxFit.cover,),
                      ),

                      ),

                    Padding(
                      padding: EdgeInsets.only( top: 150 , left: 20 ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text( offersModel.data[index].name , style: TextStyle(
                              color: Colors.black,
                              fontFamily: ArabicFonts.Cairo,
                              fontWeight: FontWeight.w600,
                              package: 'google_fonts_arabic',
                              fontSize: 11
                          ),
                            textDirection: TextDirection.rtl,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: _price_old_price(index)
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
                                      builder: (context)=> ProductDetailPage()
                                  ));
                                },
                              ),
                              SizedBox( width: 30,),
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
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute( builder: (context)=>ProductDetailPage()));
                                },
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
  _price_old_price( int index ){
    if( offersModel.data[index].price == offersModel.data[index].oldPrice){
      return  Text( offersModel.data[index].price.toString() , style: TextStyle(
          color: HexColor('#FE4545'),
          fontFamily: ArabicFonts.Cairo,
          fontWeight: FontWeight.w600,
          package: 'google_fonts_arabic',
          fontSize: 13
      ),
        textDirection: TextDirection.rtl,
      );
    }
    else if ( offersModel.data[index].price != offersModel.data[index].oldPrice){
      return Row(
        children: [
          Text( offersModel.data[index].oldPrice.toString() , style: TextStyle(
            color: Colors.blueGrey,
            fontFamily: ArabicFonts.Cairo,
            fontWeight: FontWeight.w600,
            package: 'google_fonts_arabic',
            fontSize: 13,
            decoration: TextDecoration.lineThrough,
          ),
            textDirection: TextDirection.rtl,
          ),
          SizedBox( width: 30,),
          Text( offersModel.data[index].price.toString() , style: TextStyle(
              color: HexColor('#FE4545'),
              fontFamily: ArabicFonts.Cairo,
              fontWeight: FontWeight.w600,
              package: 'google_fonts_arabic',
              fontSize: 13
          ),
            textDirection: TextDirection.rtl,
          ),

        ],
      );
    }

  }
}
