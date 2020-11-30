import 'package:scarf_app_model_1/data/view_all_model.dart';
import 'package:scarf_app_model_1/domain/category/view_all/view_all_repo_interf.dart';

class ViewallStore{
  ViewallModel viewallModel;
  IViewall iViewall;
  ViewallStore( this.iViewall);

  Future<ViewallModel> getViewall() async{
    viewallModel = ViewallModel.fromJson( await iViewall.getetViewall());
    return viewallModel;


  }
}