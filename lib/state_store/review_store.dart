import 'package:scarf_app_model_1/data/review_model.dart';
import 'package:scarf_app_model_1/domain/category/review_domain/review_repo_interf.dart';

class ReviewStore{
  ReviewModel reviewModel;
  IReviewRepo iReviewRepo;
  ReviewStore( this.iReviewRepo);

  Future<ReviewModel> getReview() async{
    reviewModel = ReviewModel.fromJson( await iReviewRepo.getReview());
    return reviewModel;
  }
}