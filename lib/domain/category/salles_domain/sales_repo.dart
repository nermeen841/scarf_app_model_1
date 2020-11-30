import 'package:scarf_app_model_1/core/api_utiliti.dart';
import 'package:scarf_app_model_1/domain/category/salles_domain/sales_repo_inter.dart';

class SalesRepo implements ISallesRepo{
  NetWork netWork = NetWork();

  @override
  Future getSales() async{
    return netWork.getData(
      url: "https://myscarf.com.sa/api/most/selles",
      headers: [{
        "Connection" : "keep-alive",
        "Accept" : "*/*",
      }]
    );

  }

}