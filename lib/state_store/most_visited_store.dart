import 'package:scarf_app_model_1/data/most_visited_model.dart';
import 'package:scarf_app_model_1/domain/category/most_visited_domain/most_visited_repo.dart';


class MostvisitedStore{
  MostVisitedModel mostVisitedModel;
MostVisitedRepo mostVisitedRepo;
  MostvisitedStore( this.mostVisitedRepo);

  Future<MostVisitedModel> getMostVisited() async{
    mostVisitedModel = MostVisitedModel.fromJson( await mostVisitedRepo.getMostVisited());
    return mostVisitedModel;
  }
}