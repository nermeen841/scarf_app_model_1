import 'package:scarf_app_model_1/data/category_model.dart';
import 'package:scarf_app_model_1/domain/category/category_repo_inter.dart';

class CategoryStore{
  ICategoryRepo iCategoryRepo;
  CategoryModel categoryModel;
  CategoryStore( this.iCategoryRepo);

  Future<CategoryModel> getCategory() async{
    categoryModel = CategoryModel.fromJson( await iCategoryRepo.getCategory());
    return categoryModel;

  }
}