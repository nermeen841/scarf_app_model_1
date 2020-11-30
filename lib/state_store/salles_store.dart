import 'package:scarf_app_model_1/data/most_sales_model.dart';
import 'package:scarf_app_model_1/domain/category/salles_domain/sales_repo_inter.dart';

class SalesStore{
  ISallesRepo iSallesRepo;
  MostSallesModel mostSallesModel;

  SalesStore( this.iSallesRepo);

  Future<MostSallesModel> getSales() async{
    mostSallesModel = MostSallesModel.fromJson( await iSallesRepo.getSales());
    return mostSallesModel;
  }
}