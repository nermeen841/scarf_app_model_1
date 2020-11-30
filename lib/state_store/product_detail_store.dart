import 'package:scarf_app_model_1/data/product_detail_model.dart';
import 'package:scarf_app_model_1/domain/category/product_detail_domain/product_detail_repo_inter.dart';

class ProductdetailStore{
  ProductdetailModel productdetailModel;
  IProductdetailRepo iProductdetailRepo;
  ProductdetailStore( this.iProductdetailRepo);

  Future<ProductdetailModel> getProductdetail() async{
    productdetailModel = ProductdetailModel.fromJson( await iProductdetailRepo.getProductdetail());
    return productdetailModel;
  }
}