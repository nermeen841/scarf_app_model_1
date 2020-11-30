import 'package:scarf_app_model_1/core/api_utiliti.dart';
import 'package:scarf_app_model_1/domain/category/latest_product_domain/latest_product_repo_interf.dart';

class LatestProductRepo implements ILatestProductRepo{

  NetWork netWork = NetWork();
  @override
  Future getLatestproduct() async{
    return netWork.getData(
      url: ' https://myscarf.com.sa/api/latest/products',
      headers: [{
        "Accept" : "*/*",
        "Connection" : "keep-alive",
        "User-Agent" : "PostmanRuntime/7.26.5"
      }]
    );

  }

}