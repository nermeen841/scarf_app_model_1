import 'package:scarf_app_model_1/core/api_utiliti.dart';
import 'package:scarf_app_model_1/domain/category/most_visited_domain/most_visited_repo_interf.dart';

class MostVisitedRepo implements IMostvisitedRepo{

  NetWork netWork = NetWork();

  @override
  Future getMostVisited() async {
    return netWork.getData(
      url: 'https://myscarf.com.sa/api/most/visted',
      headers: [{
        "Accept" : "*/*",
        "Connection" : "keep-alive",
        "User-Agent" : "PostmanRuntime/7.26.5"
      }]
    );
  }

}