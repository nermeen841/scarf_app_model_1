import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/state_store/salles_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';


class SalesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("=================");
    return Scaffold(
      body: WhenRebuilderOr<SalesStore>(
        initState: (context, rm) => rm.setState((s) => s.getSales()),
        observe: () => RM.get<SalesStore>(),
        builder: (context, model) => SalesScreen(),
        onWaiting: () => Loading(),
        onError: (error) => IN.get<SalesStore>().getSales()== null
            ? Text('$error')
            : SalesScreen(),
      ),
    );
  }
}




class SalesScreen extends StatefulWidget {
  @override
  _SalesScreenState createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {


  final mostSallesModel = IN.get<SalesStore>().mostSallesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mostSallesModel.data.length,
          itemBuilder: ( BuildContext context , int index){
            return Stack(
              children: [

                Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 223,
                      color: HexColor('#F9FBF9'),
                      margin: EdgeInsets.only(left: 10, right: 10),
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(15),
                       child: cachImage(mostSallesModel.data[index].image , 223, 130)
                     ),
                    ),
                    Padding(
                      padding: EdgeInsets.only( top: 170 ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text( mostSallesModel.data[index].name , style: TextStyle(
                              color: Colors.black,
                              fontFamily: ArabicFonts.Cairo,
                              fontWeight: FontWeight.w600,
                              package: 'google_fonts_arabic',
                              fontSize: 11
                              ),
                              textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: _price_old_price(index)),
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
                              SizedBox( width: 40,),
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

  _price_old_price( int index ){
    if( mostSallesModel.data[index].price == mostSallesModel.data[index].oldPrice){
      return  Text( mostSallesModel.data[index].price.toString() , style: TextStyle(
          color: HexColor('#FE4545'),
          fontFamily: ArabicFonts.Cairo,
          fontWeight: FontWeight.w600,
          package: 'google_fonts_arabic',
          fontSize: 13
      ),
        textDirection: TextDirection.rtl,
      );
    }
    else if ( mostSallesModel.data[index].price != mostSallesModel.data[index].oldPrice){
      return Row(
        children: [
          Text( mostSallesModel.data[index].oldPrice.toString() , style: TextStyle(
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
          Text( mostSallesModel.data[index].price.toString() , style: TextStyle(
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
