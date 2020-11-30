import 'package:scarf_app_model_1/data/slider_model.dart';
import 'package:scarf_app_model_1/domain/category/slider/slider_repo_inter.dart';

class SliderStore{
  SliderModel sliderModel ;
 // SliderRepo sliderRepo;
ISliderRepo iSliderRepo;
  SliderStore( this.iSliderRepo);

  Future<SliderModel> getSlider() async{
    sliderModel = SliderModel.fromJson( await iSliderRepo.getSlider());
    print( sliderModel);
    return sliderModel;
  }

}