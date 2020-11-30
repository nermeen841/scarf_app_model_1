
import 'package:scarf_app_model_1/core/api_utiliti.dart';
import 'package:scarf_app_model_1/domain/category/view_all/view_all_repo_interf.dart';

class ViewallRepo implements IViewall{

  NetWork netWork = NetWork();
  @override
  Future getetViewall() {
    return netWork.getData(
      url: "https://myscarf.com.sa/api/all/latest/products",
      headers: [{
        "Connection" : "keep-alive",
        "Accept" : "*/*",
      }]
    );
  }

}