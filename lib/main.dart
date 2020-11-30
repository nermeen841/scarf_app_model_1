
import 'package:flutter/material.dart';
import 'package:scarf_app_model_1/data/most_sales_model.dart';
import 'package:scarf_app_model_1/domain/category/auth_repo/auth_repo.dart';
import 'package:scarf_app_model_1/domain/category/cat_repo.dart';
import 'package:scarf_app_model_1/domain/category/category_repo.dart';
import 'package:scarf_app_model_1/domain/category/latest_product_domain/latest_product_repo.dart';
import 'package:scarf_app_model_1/domain/category/most_visited_domain/most_visited_repo.dart';
import 'package:scarf_app_model_1/domain/category/offers_domain/offers_repo.dart';
import 'package:scarf_app_model_1/domain/category/product_detail_domain/product_detail_repo.dart';
import 'package:scarf_app_model_1/domain/category/review_domain/review_repo.dart';
import 'package:scarf_app_model_1/domain/category/salles_domain/sales_repo.dart';
import 'package:scarf_app_model_1/domain/category/view_all/view_all_repo.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/Bottom_nav_screens/view_all_screen.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/product_detail_screen.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/buy_product_pages/reviews_page.dart';
import 'package:scarf_app_model_1/presentation/intro_screens/first_intro_screen.dart';
import 'package:scarf_app_model_1/state_store/auth_store.dart';
import 'package:scarf_app_model_1/state_store/cat_store.dart';
import 'package:scarf_app_model_1/state_store/category_store.dart';
import 'package:scarf_app_model_1/state_store/latest_product_store.dart';
import 'package:scarf_app_model_1/state_store/most_visited_store.dart';
import 'package:scarf_app_model_1/state_store/offers_store.dart';
import 'package:scarf_app_model_1/state_store/product_detail_store.dart';
import 'package:scarf_app_model_1/state_store/review_store.dart';
import 'package:scarf_app_model_1/state_store/salles_store.dart';
import 'package:scarf_app_model_1/state_store/slider_store.dart';
import 'package:scarf_app_model_1/state_store/view_all_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'domain/category/slider/slider_repo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Injector(
      inject: [
        Inject(()=>CategoryStore(CategoryRepo())),
        Inject(()=>SliderStore(SliderRepo())),
        Inject(()=>LatestProductStore(LatestProductRepo())),
        Inject(()=>MostvisitedStore(MostVisitedRepo())),
        Inject(()=>SalesStore(SalesRepo())),
        Inject(()=>OffersStore(OffersRepo())),
        Inject(()=>ProductdetailStore(ProductdetailRepo())),
        Inject(()=>AuthStor(AuthRepo())),
        Inject(()=>ReviewStore(ReviewRepo())),
        Inject(()=>ViewallStore(ViewallRepo())),
        Inject(()=>CatStore(CatRepo())),

      ],
      builder: (context) =>  MaterialApp(
        home: FirstIntroScreen(),
      ),
    );
  }
}