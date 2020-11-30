import 'package:scarf_app_model_1/domain/category/cat_model.dart';
import 'package:scarf_app_model_1/domain/category/cat_repo_interf.dart';


class CatStore{
  ICatRepo iCatRepo;
  CatModel catModel;
  CatStore( this.iCatRepo);

  Future<CatModel> getCat() async{
    catModel = CatModel.fromJson( await iCatRepo.getCat());
    return catModel;
  }
}