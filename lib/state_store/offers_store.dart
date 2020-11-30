import 'package:scarf_app_model_1/data/offers_model.dart';
import 'package:scarf_app_model_1/domain/category/offers_domain/offers_repo_interf.dart';

class OffersStore{

  OffersModel offersModel;
  IOffersRepo iOffersRepo;
  OffersStore( this.iOffersRepo);

  Future<OffersModel> getOffers() async{
    offersModel = OffersModel.fromJson( await iOffersRepo.getOffers());
    return offersModel;

  }
}