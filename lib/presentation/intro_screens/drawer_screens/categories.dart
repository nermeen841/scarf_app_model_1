import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:scarf_app_model_1/core/designe_utili.dart';
import 'package:scarf_app_model_1/domain/category/slider/slider_data_api.dart';
import 'package:scarf_app_model_1/state_store/category_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'cat_screen.dart';



class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("=================");
    return Scaffold(
      body: WhenRebuilderOr<CategoryStore>(
        initState: (context, rm) => rm.setState((s) => s.getCategory()),
        observe: () => RM.get<CategoryStore>(),
        builder: (context, model) => Categories(),
        onWaiting: () => Loading(),
        onError: (error) => IN.get<CategoryStore>().categoryModel == null
            ? Text('$error')
            : Categories(),
      ),
    );
  }
}





class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  final categoryModel = IN.get<CategoryStore>().categoryModel;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: comm_appbar('Categories', context),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only( left: 10 , right: 10),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 343,
                height: 150,
                child: SliderPage(),
              ),
              SizedBox( height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                padding: EdgeInsets.only( top: 20 ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: categoryModel.data.length,
                    itemBuilder: (BuildContext context , int index){
                    return Padding(
                      padding: EdgeInsets.only( left: 20, right: 20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                           InkWell(
                             child:  CircleAvatar(
                               radius: 60.0,
                               backgroundImage: NetworkImage(categoryModel.data[index].image),
                               backgroundColor: Colors.transparent,
                             ),
                             onTap: (){},
                           ),
                            Text(
                              categoryModel.data[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                                fontFamily: ArabicFonts.Cairo,
                                package: 'google_fonts_arabic',
                              ),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox( width: 20,),
                            ],
                        ),
                      );
                    })
              ),
              SizedBox( height: 15,),
               Expanded(
                 child:  CatPage(),
               )

            ],
          ),

        ),
      )
    );
  }

  }

