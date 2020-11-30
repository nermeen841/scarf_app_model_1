import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/color.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/state_store/product_detail_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';


class SpecificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("=================");
    return Scaffold(
      body: WhenRebuilderOr<ProductdetailStore>(
        initState: (context, rm) => rm.setState((s) => s.getProductdetail()),
        observe: () => RM.get<ProductdetailStore>(),
        builder: (context, model) => SpecificationScreen(),
        onWaiting: () => Loading(),
        onError: (error) => IN.get<ProductdetailStore>().getProductdetail()== null
            ? Text('$error')
            : SpecificationScreen(),
      ),
    );
  }
}





class SpecificationScreen extends StatefulWidget {
  @override
  _SpecificationScreenState createState() => _SpecificationScreenState();
}

class _SpecificationScreenState extends State<SpecificationScreen> {

  final productdetailModel = IN.get<ProductdetailStore>().productdetailModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: comm_appbar('Specification', context),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Name" , style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: ArabicFonts.Cairo,
                    package: 'google_fonts_arabic',
                    color: HexColor('#BD9E2F')
                ),),
                Text("Value" , style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: ArabicFonts.Cairo,
                    package: 'google_fonts_arabic',
                    color: HexColor('#BD9E2F')
                ),)
              ],
            ),
            Divider( thickness: 2,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: ListView.builder(
                itemCount: productdetailModel.data.attributes.length,
                  itemBuilder: ( BuildContext context , int index){
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(productdetailModel.data.attributes[index].name , style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontFamily: ArabicFonts.Cairo,
                              package: 'google_fonts_arabic',
                              color: Colors.black54
                          ),
                            textDirection: TextDirection.rtl,
                          ),
                          Column(
                            children: [
                              Text(productdetailModel.data.attributes[index].values[0].name ,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: ArabicFonts.Cairo,
                                  package: 'google_fonts_arabic',
                                  color: Colors.black54
                              ),
                                textDirection: TextDirection.rtl,
                              ),
                              Divider( thickness: 2,),
                            ],
                          )
                        ],
                      )
                    ],
                  );
                  }
              )
            )
          ],
        )

      ),
    );
  }
}
