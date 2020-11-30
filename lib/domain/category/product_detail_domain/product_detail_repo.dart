import 'package:scarf_app_model_1/core/api_utiliti.dart';
import 'package:scarf_app_model_1/domain/category/product_detail_domain/product_detail_repo_inter.dart';

class ProductdetailRepo implements IProductdetailRepo{

  NetWork netWork = NetWork();

  @override
  Future getProductdetail() {
    return netWork.getData(
      url: "https://myscarf.com.sa/api/product/207",
      headers: [{
        "Connection" : "keep-alive",
        "Accept" : "*/*",
      }]
    );
  }

}