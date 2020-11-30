import 'package:scarf_app_model_1/core/api_utiliti.dart';
import 'package:scarf_app_model_1/domain/category/review_domain/review_repo_interf.dart';

class ReviewRepo implements IReviewRepo{
  NetWork netWork = NetWork();

  @override
  Future getReview() {
   return netWork.getData(
     url: "https://myscarf.com.sa/api/product/207/reviews",
     headers: [{
       "Accept" : "*/*",
       "Connection" : "keep-alive",
     }]
   );
  }

}