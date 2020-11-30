import 'package:scarf_app_model_1/core/api_utiliti.dart';
import 'cat_repo_interf.dart';

class CatRepo implements ICatRepo{

  NetWork netWork = NetWork();
  @override
  Future getCat() {
    return netWork.getData(
        url: "https://myscarf.com.sa/api/category/30",
        headers: [{
          "Connection" : "keep-alive",
          "Accept" : "*/*",
        }]
    );
  }

}