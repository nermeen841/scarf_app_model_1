import 'package:scarf_app_model_1/core/api_utiliti.dart';
import 'package:scarf_app_model_1/domain/category/offers_domain/offers_repo_interf.dart';

class OffersRepo implements IOffersRepo{

  NetWork netWork = NetWork();

  @override
  Future getOffers() {

    return netWork.getData(
      url: "https://myscarf.com.sa/api/offers",
      headers: [{
        "Accept" : "*/*",
        "Connection" : "keep-alive"
      }]
    );

  }

}