import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/product_detail_screen.dart';
import 'package:scarf_app_model_1/state_store/view_all_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';



class ViewallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("=================");
    return Scaffold(
      body: WhenRebuilderOr<ViewallStore>(
        initState: (context, rm) => rm.setState((s) => s.getViewall()),
        observe: () => RM.get<ViewallStore>(),
        builder: (context, model) => ViewAllScreen(),
        onWaiting: () => Loading(),
        onError: (error) => IN.get<ViewallStore>().getViewall()== null
            ? Text('$error')
            : ViewAllScreen(),
      ),
    );
  }
}








class ViewAllScreen extends StatefulWidget {
  @override
  _ViewAllScreenState createState() => _ViewAllScreenState();
}

class _ViewAllScreenState extends State<ViewAllScreen> {
  final viewallModel = IN.get<ViewallStore>().viewallModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: comm_appbar('All Product', context),
      bottomNavigationBar: Image.asset('assets/Component 104 – 1.png'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          itemCount: viewallModel.data.length,
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
            ),
            itemBuilder: ( BuildContext context , int index){
              return Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 150,
                        height: 223,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(viewallModel.data[index].image, fit: BoxFit.cover,),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only( top: 80, left: 7  ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only( right: 10 ),
                              child: Text(viewallModel.data[index].name , style: TextStyle(
                                color: Colors.black,
                                fontFamily: ArabicFonts.Cairo,
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                                package: 'google_fonts_arabic',
                              ),
                                maxLines: 2,
                                textAlign: TextAlign.end,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only( left: 15),
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
        )

      ),
    );
  }

  _price_old_price( int index ){
    if( viewallModel.data[index].price == viewallModel.data[index].oldPrice){
      return  Text( viewallModel.data[index].price.toString() , style: TextStyle(
          color: HexColor('#FE4545'),
          fontFamily: ArabicFonts.Cairo,
          fontWeight: FontWeight.w600,
          package: 'google_fonts_arabic',
          fontSize: 13
      ),
        textDirection: TextDirection.rtl,
      );
    }
    else if ( viewallModel.data[index].price != viewallModel.data[index].oldPrice){
      return Row(
        children: [
          Text( viewallModel.data[index].oldPrice.toString() , style: TextStyle(
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
          Text( viewallModel.data[index].price.toString() , style: TextStyle(
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
