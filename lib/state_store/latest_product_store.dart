import 'package:scarf_app_model_1/data/latest_product_model.dart';
import 'package:scarf_app_model_1/domain/category/latest_product_domain/latest_product_repo.dart';

class LatestProductStore{
  LatestProductRepo latestProductRepo ;
  LatestProductModel latestProductModel;
  LatestProductStore( this.latestProductRepo);

  Future<LatestProductModel> getLatestestProduct() async{
    latestProductModel = LatestProductModel.fromJson( await latestProductRepo.getLatestproduct());
    return latestProductModel;
  }
}