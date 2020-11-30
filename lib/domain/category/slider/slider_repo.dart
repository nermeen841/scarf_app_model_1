import 'package:scarf_app_model_1/core/api_utiliti.dart';
import 'package:scarf_app_model_1/domain/category/slider/slider_repo_inter.dart';

class SliderRepo implements ISliderRepo{

  NetWork netWork = NetWork();
   @override
  Future getSlider() {
    return netWork.getData(
      url: 'https://myscarf.com.sa/api/slider',
      headers: [{
        "Connection" : "keep-alive",
        "Accept" : "*/*",
        "Host" : "<calculated when request is sent>",
        "User-Agent" : "PostmanRuntime/7.26.5",
        "Accept-Encoding" : "gzip, deflate, br"
      }]
    );
  }

}