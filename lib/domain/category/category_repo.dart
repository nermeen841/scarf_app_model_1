import 'package:scarf_app_model_1/core/api_utiliti.dart';

import 'category_repo_inter.dart';

class CategoryRepo implements ICategoryRepo{
  NetWork netWork = NetWork();

  @override
  Future getCategory() async{
    return netWork.getData(
      url: 'https://myscarf.com.sa/api/categories',
      headers: [{
        "Connection" : "keep-alive",
        "Accept" : "*/*",
      }]
    );


  }

}